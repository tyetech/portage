# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/wireshark/wireshark-1.6.10-r2.ebuild,v 1.7 2012/09/29 10:48:55 blueness Exp $

EAPI=4
PYTHON_DEPEND="python? 2"
inherit autotools eutils flag-o-matic python toolchain-funcs user

[[ -n ${PV#*_rc} && ${PV#*_rc} != ${PV} ]] && MY_P=${PN}-${PV/_} || MY_P=${P}
DESCRIPTION="A network protocol analyzer formerly known as ethereal"
HOMEPAGE="http://www.wireshark.org/"
SRC_URI="http://www.wireshark.org/download/src/all-versions/${MY_P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="
	adns doc doc-pdf gtk ipv6 libadns lua gcrypt geoip kerberos profile
	+pcap portaudio python +caps selinux smi ssl threads zlib
"
RDEPEND=">=dev-libs/glib-2.14:2
	zlib? ( sys-libs/zlib
		!=sys-libs/zlib-1.2.4 )
	smi? ( net-libs/libsmi )
	gtk? ( >=x11-libs/gtk+-2.4.0:2
		x11-libs/pango
		dev-libs/atk
		x11-misc/xdg-utils )
	ssl? ( <net-libs/gnutls-3 )
	gcrypt? ( dev-libs/libgcrypt )
	pcap? ( net-libs/libpcap )
	caps? ( sys-libs/libcap )
	kerberos? ( virtual/krb5 )
	portaudio? ( media-libs/portaudio )
	adns? (
		!libadns? ( >=net-dns/c-ares-1.5 )
	)
	libadns? ( net-libs/adns )
	geoip? ( dev-libs/geoip )
	lua? ( >=dev-lang/lua-5.1 )
	selinux? ( sec-policy/selinux-wireshark )"

DEPEND="${RDEPEND}
	doc? ( dev-libs/libxslt
		dev-libs/libxml2
		app-doc/doxygen
		doc-pdf? ( dev-java/fop ) )
	virtual/pkgconfig
	dev-lang/perl
	sys-devel/bison
	sys-apps/sed
	sys-devel/flex
"

S=${WORKDIR}/${MY_P}

# borrowed from GSoC2010_Gentoo_Capabilities by constanze and flameyeys
# @FUNCTION: fcaps
# @USAGE: fcaps {uid:gid} {file-mode} {cap1[,cap2,...]} {file}
# @RETURN: 0 if all okay; non-zero if failure and fallback
# @DESCRIPTION:
# fcaps sets the specified capabilities in the effective and permitted set of
# the given file. In case of failure fcaps sets the given file-mode.
fcaps() {
	local uid_gid=$1
	local perms=$2
	local capset=$3
	local path=$4
	local res

	chmod $perms $path && \
	chown $uid_gid $path
	res=$?

	use caps || return $res

	#set the capability
	setcap "$capset=ep" "$path" &> /dev/null
	#check if the capabilitiy got set correctly
	setcap -v "$capset=ep" "$path" &> /dev/null
	res=$?

	if [ $res -ne 0 ]; then
		ewarn "Failed to set capabilities. Probable reason is missed kernel support."
		ewarn "Kernel must have <FS>_FS_SECURITY enabled where <FS> is the filesystem"
		ewarn "to store ${path} (e.g. EXT3_FS_SECURITY). For kernels version before"
		ewarn "2.6.33_rc1 SECURITY_FILE_CAPABILITIES must be enabled as well."
		ewarn
		ewarn "Falling back to suid now..."
		chmod u+s ${path}
	fi
	return $res
}

pkg_setup() {
	if ! use gtk; then
		ewarn "USE=-gtk disables gtk-based gui called wireshark."
		ewarn "Only command line utils will be built available"
	fi
	if use python; then
		python_set_active_version 2
		python_pkg_setup
	fi
	# Add group for users allowed to sniff.
	enewgroup wireshark
}

src_prepare() {
	epatch \
		"${FILESDIR}"/${PN}-1.6.6-gtk-pcap.patch \
		"${FILESDIR}"/${PN}-1.8.1-ldflags.patch \
		"${FILESDIR}"/${PN}-1.6.10-CVE-2012-3548.patch
	sed -i -e 's|.png||g' ${PN}.desktop || die
	eautoreconf
}

src_configure() {
	local myconf

	if [[ $(gcc-major-version) -lt 3 ||
		( $(gcc-major-version) -eq 3 &&
			$(gcc-minor-version) -le 4 ) ]] ; then
		die "Unsupported compiler version, please upgrade."
	fi

	# profile and pie are incompatible #215806, #292991
	if use profile; then
		ewarn "You've enabled the 'profile' USE flag, building PIE binaries is disabled."
		ewarn "Also ignore \"unrecognized option '-nopie'\" gcc warning #358101."
		append-flags $(test-flags-CC -nopie)
	fi

	if use adns; then
		if use libadns; then
			myconf+=" --with-adns --without-c-ares"
		else
			myconf+=" --without-adns --with-c-ares"
		fi
	else
		if use libadns; then
			myconf+=" --with-adns --without-c-ares"
		fi
	fi

	# Workaround bug #213705. If krb5-config --libs has -lcrypto then pass
	# --with-ssl to ./configure. (Mimics code from acinclude.m4).
	if use kerberos; then
		case `krb5-config --libs` in
			*-lcrypto*)
				ewarn "Kerberos was built with ssl support: linkage with openssl is enabled."
				ewarn "Note there are annoying license incompatibilities between the OpenSSL"
				ewarn "license and the GPL, so do your check before distributing such package."
				myconf+=" --with-ssl"
				;;
		esac
	fi

	# Hack around inability to disable doxygen/fop doc generation
	use doc || export ac_cv_prog_HAVE_DOXYGEN=false
	use doc-pdf || export ac_cv_prog_HAVE_FOP=false

	# dumpcap requires libcap, setuid-install requires dumpcap
	econf \
		$(use pcap && use_enable !caps setuid-install) \
		$(use pcap && use_enable caps setcap-install) \
		$(use_enable gtk wireshark) \
		$(use_enable ipv6) \
		$(use_enable profile profile-build) \
		$(use_enable threads) \
		$(use_with caps libcap) \
		$(use_with gcrypt) \
		$(use_with geoip) \
		$(use_with kerberos krb5) \
		$(use_with lua) \
		$(use_with pcap dumpcap-group wireshark) \
		$(use_with pcap) \
		$(use_with portaudio) \
		$(use_with python) \
		$(use_with smi libsmi) \
		$(use_with ssl gnutls) \
		$(use_with zlib) \
		--sysconfdir="${EPREFIX}"/etc/wireshark \
		--disable-extra-gcc-checks \
		${myconf}
}

src_compile() {
	default
	use doc && cd docbook && { emake; }
}

src_install() {
	default
	if use doc; then
		dohtml -r docbook/{release-notes.html,ws{d,u}g_html{,_chunked}}
		if use doc-pdf; then
			insinto /usr/share/doc/${PF}/pdf/
			doins docbook/{{developer,user}-guide,release-notes}-{a4,us}.pdf
		fi
	fi

	# FAQ is not required as is installed from help/faq.txt
	dodoc AUTHORS ChangeLog NEWS README{,.bsd,.linux,.macos,.vmware} \
		doc/{randpkt.txt,README*}

	insinto /usr/include/wiretap
	doins wiretap/wtap.h

	if use gtk; then
		for c in hi lo; do
			for d in 16 32 48; do
				insinto /usr/share/icons/${c}color/${d}x${d}/apps
				newins image/${c}${d}-app-wireshark.png wireshark.png
			done
		done
		domenu wireshark.desktop
	fi
	use pcap && chmod o-x "${ED}"/usr/bin/dumpcap #357237
}

pkg_postinst() {
	if use caps && use pcap; then
		fcaps 0:wireshark 550 cap_dac_read_search,cap_net_raw,cap_net_admin "${EROOT}"/usr/bin/dumpcap
	fi
	echo
	ewarn "NOTE: To run wireshark as normal user you have to add yourself to"
	ewarn "the wireshark group. This security measure ensures that only trusted"
	ewarn "users are allowed to sniff your traffic."
	echo
}
