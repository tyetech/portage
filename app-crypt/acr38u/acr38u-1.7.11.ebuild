# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-crypt/cvs-repo/gentoo-x86/app-crypt/acr38u/acr38u-1.7.11.ebuild,v 1.2 2012/05/03 18:16:38 jdhore Exp $

EAPI=3

inherit multilib eutils versionator autotools

MY_P=ACR38_LINUX_$(get_version_component_range 1)00$(get_version_component_range 2)$(get_version_component_range 3)_P

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="~amd64 ~x86"
DESCRIPTION="Non CCID driver for ACR38 AC1038-based Smart Card Reader."

#SRC_URI="http://www.acs.com.hk/drivers/eng/${MY_P}.tar.bz2"
# tarball release is encapsuled in a .zip file :-(
# http://www.acs.com.hk/drivers/eng/ACR38_Driver_Lnx_101_P.zip
# I'm waiting an answer from info@acs.com.hk about that !
SRC_URI="http://www.linuxunderground.be/${MY_P}.tar.bz2"
HOMEPAGE="http://www.acs.com.hk"

# Make this safe from collisions, require a version of pcsc-lite that
# uses libusb-1.0 and use the wrapper library instead.
RDEPEND=">=sys-apps/pcsc-lite-1.6.4
	dev-libs/libusb-compat"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

S="${WORKDIR}/${MY_P}"

IUSE=""

src_prepare() {
	epatch_user

	sed -i -e '/pcdir/s:@prefix@/lib:$(libdir):' src/controllib/Makefile.am

	eautoreconf
}

src_configure() {
	econf \
		--enable-static=false \
		--enable-usbdropdir="${D}/usr/$(get_libdir)/readers/usb"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"

	# Remove useless .la files
	find "${D}" -name '*.la' -delete

	insinto /lib/udev/rules.d
	newins "${FILESDIR}/${PV}.rules" 92-pcscd-acr38u.rules
}
