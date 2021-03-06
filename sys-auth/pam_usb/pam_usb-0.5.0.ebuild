# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-auth/cvs-repo/gentoo-x86/sys-auth/pam_usb/pam_usb-0.5.0.ebuild,v 1.9 2012/05/28 19:43:38 johu Exp $

EAPI=4

PYTHON_DEPEND="2:2.6"

inherit eutils pam python toolchain-funcs

DESCRIPTION="A pam module to provide authentication using USB device"
HOMEPAGE="http://pamusb.org/"
SRC_URI="mirror://sourceforge/pamusb/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

COMMON_DEPEND="dev-libs/libxml2
	sys-apps/dbus
	virtual/pam"
RDEPEND="${COMMON_DEPEND}
	dev-python/celementtree
	dev-python/dbus-python
	dev-python/pygobject:2
	sys-apps/pmount
	sys-fs/udisks:0"
DEPEND="${COMMON_DEPEND}
	virtual/pkgconfig"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_prepare() {
	epatch "${FILESDIR}"/${P}-openpam.patch
	python_convert_shebangs 2 tools/pamusb-{conf,agent} #413025
}

src_compile() {
	emake CC="$(tc-getCC)"
}

src_install() {
	emake \
		DESTDIR="${D}" \
		DOCS_DEST="${D}/usr/share/doc/${PF}" \
		PAM_USB_DEST="${D}/$(getpam_mod_dir)" \
		install

	dodoc ChangeLog README.md
}
