# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/systemd/systemd-191-r1.ebuild,v 1.1 2012/09/26 05:22:05 mgorny Exp $

EAPI=4

inherit autotools-utils bash-completion-r1 linux-info pam systemd user

DESCRIPTION="System and service manager for Linux"
HOMEPAGE="http://www.freedesktop.org/wiki/Software/systemd"
SRC_URI="http://www.freedesktop.org/software/systemd/${P}.tar.xz"

LICENSE="GPL-2 LGPL-2.1 MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="acl audit cryptsetup gcrypt lzma pam qrcode selinux tcpd"

MINKV="2.6.39"

COMMON_DEPEND=">=sys-apps/dbus-1.4.10
	>=sys-apps/kmod-5
	>=sys-apps/util-linux-2.20
	~sys-fs/udev-191
	sys-libs/libcap
	acl? ( sys-apps/acl )
	audit? ( >=sys-process/audit-2 )
	cryptsetup? ( >=sys-fs/cryptsetup-1.4.2 )
	gcrypt? ( >=dev-libs/libgcrypt-1.4.5 )
	lzma? ( app-arch/xz-utils )
	pam? ( virtual/pam )
	qrcode? ( media-gfx/qrencode )
	selinux? ( sys-libs/libselinux )
	tcpd? ( sys-apps/tcp-wrappers )"

RDEPEND="${COMMON_DEPEND}
	sys-apps/hwids
	|| (
		>=sys-apps/util-linux-2.22
		<sys-apps/sysvinit-2.88-r4
	)
	!<sys-libs/glibc-2.10
	!~sys-fs/udev-187"

# sys-fs/quota is necessary to store correct paths in unit files
DEPEND="${COMMON_DEPEND}
	app-arch/xz-utils
	app-text/docbook-xsl-stylesheets
	dev-libs/libxslt
	dev-util/gperf
	dev-util/intltool
	sys-fs/quota
	>=sys-kernel/linux-headers-${MINKV}"

AUTOTOOLS_IN_SOURCE_BUILD=1

pkg_setup() {
	enewgroup lock # used by var-lock.mount
	enewgroup tty 5 # used by mount-setup for /dev/pts
}

src_prepare() {
	# systemd-analyze is for python2.7 only nowadays.
	sed -i -e '1s/python/&2.7/' src/analyze/systemd-analyze

	# link against external udev.
	sed -i -e 's:libudev\.la:-ludev:' Makefile.am

	local PATCHES=(
		"${FILESDIR}"/${PV}-0001-Disable-udev-targets-for-udev-190.patch
		"${FILESDIR}"/${PV}-0002-journal-bring-mmap-cache-prototype-in-sync.patch
		"${FILESDIR}"/${PV}-0003-log-fix-repeated-invocation-of-vsnprintf-vaprintf-in.patch
	)

	autotools-utils_src_prepare

	# XXX: support it within eclass
	eautomake
}

src_configure() {
	local myeconfargs=(
		--localstatedir=/var
		--with-distro=gentoo
		# install everything to /usr
		--with-rootprefix=/usr
		--with-rootlibdir=/usr/$(get_libdir)
		# but pam modules have to lie in /lib*
		--with-pamlibdir=/$(get_libdir)/security
		# this avoids dep on pciutils & usbutils
		--with-pci-ids-path=/usr/share/misc/pci.ids
		--with-usb-ids-path=/usr/share/misc/usb.ids
		# make sure we get /bin:/sbin in $PATH
		--enable-split-usr
		# udev parts
		--disable-introspection
		--disable-gtk-doc
		--disable-gudev
		$(use_enable acl)
		$(use_enable audit)
		$(use_enable cryptsetup libcryptsetup)
		$(use_enable gcrypt)
		$(use_enable lzma xz)
		$(use_enable pam)
		$(use_enable qrcode qrencode)
		$(use_enable selinux)
		$(use_enable tcpd tcpwrap)

		# Disable Python for now.
		PYTHON=:
	)

	autotools-utils_src_configure
}

src_install() {
	autotools-utils_src_install \
		bashcompletiondir=/tmp

	# compat for init= use
	dosym ../usr/lib/systemd/systemd /bin/systemd
	dosym ../lib/systemd/systemd /usr/bin/systemd
	# rsyslog.service depends on it...
	dosym ../usr/bin/systemctl /bin/systemctl

	# move files as necessary
	newbashcomp "${D}"/tmp/systemd-bash-completion.sh ${PN}
	rm -r "${D}"/tmp || die

	# we just keep sysvinit tools, so no need for the mans
	rm "${D}"/usr/share/man/man8/{halt,poweroff,reboot,runlevel,shutdown,telinit}.8 \
		|| die
	rm "${D}"/usr/share/man/man1/init.1 || die

	# Create /run/lock as required by new baselay/OpenRC compat.
	systemd_dotmpfilesd "${FILESDIR}"/gentoo-run.conf

	# Add mount-rules for /var/lock and /var/run, bug #433607
	systemd_dounit "${FILESDIR}"/var-{lock,run}.mount
	systemd_enable_service sysinit.target var-lock.mount
	systemd_enable_service sysinit.target var-run.mount

	# Check whether we won't break user's system.
	[[ -x "${D}"/bin/systemd ]] || die '/bin/systemd symlink broken, aborting.'
	[[ -x "${D}"/usr/bin/systemd ]] || die '/usr/bin/systemd symlink broken, aborting.'
}

pkg_preinst() {
	local CONFIG_CHECK="~AUTOFS4_FS ~BLK_DEV_BSG ~CGROUPS ~DEVTMPFS
		~FANOTIFY ~HOTPLUG ~INOTIFY_USER ~IPV6 ~NET ~PROC_FS ~SIGNALFD
		~SYSFS ~!IDE ~!SYSFS_DEPRECATED ~!SYSFS_DEPRECATED_V2"
	kernel_is -ge ${MINKV//./ } || ewarn "Kernel version at least ${MINKV} required"
	check_extra_config
}

optfeature() {
	local i desc=${1} text
	shift

	text="  [\e[1m$(has_version ${1} && echo I || echo ' ')\e[0m] ${1}"
	shift

	for i; do
		elog "${text}"
		text="& [\e[1m$(has_version ${1} && echo I || echo ' ')\e[0m] ${1}"
	done
	elog "${text} (${desc})"
}

pkg_postinst() {
	mkdir -p "${ROOT}"/run || ewarn "Unable to mkdir /run, this could mean trouble."
	if [[ ! -L "${ROOT}"/etc/mtab ]]; then
		ewarn "Upstream suggests that the /etc/mtab file should be a symlink to /proc/mounts."
		ewarn "It is known to cause users being unable to unmount user mounts. If you don't"
		ewarn "require that specific feature, please call:"
		ewarn "	$ ln -sf '${ROOT}proc/self/mounts' '${ROOT}etc/mtab'"
		ewarn
	fi

	elog "To get additional features, a number of optional runtime dependencies may"
	elog "be installed:"
	optfeature 'for systemd-analyze' \
		'dev-lang/python:2.7' 'dev-python/dbus-python'
	optfeature 'for systemd-analyze plotting ability' \
		'dev-python/pycairo[svg]'
	optfeature 'for GTK+ systemadm UI and gnome-ask-password-agent' \
		'sys-apps/systemd-ui'
	elog

	ewarn "Please note this is a work-in-progress and many packages in Gentoo"
	ewarn "do not supply systemd unit files yet. You are testing it on your own"
	ewarn "responsibility. Please remember than you can pass:"
	ewarn "	init=/sbin/init"
	ewarn "to your kernel to boot using sysvinit / OpenRC."
}
