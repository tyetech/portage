# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-db/cvs-repo/gentoo-x86/dev-db/recutils/recutils-1.5.ebuild,v 1.2 2012/05/03 02:33:10 jdhore Exp $

EAPI=4

inherit autotools eutils elisp-common

DESCRIPTION="Tools and libraries to access human-editable, plain text databases"
HOMEPAGE="http://www.gnu.org/software/recutils/"
SRC_URI="mirror://gnu/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="crypt curl emacs mdb nls static-libs"

RDEPEND="sys-libs/readline
	crypt? (
		dev-libs/libgcrypt
		dev-libs/libgpg-error
	)
	curl? ( net-misc/curl )
	emacs? (
		app-emacs/org-mode
		virtual/emacs
	)
	mdb? (
		app-office/mdbtools
		dev-libs/glib:2
	)
	nls? ( virtual/libintl )"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	nls? ( sys-devel/gettext )"

SITEFILE="50${PN}-gentoo.el"

src_prepare() {
	epatch "${FILESDIR}"/${P}-automagic.patch

	# Don't unconditionally install emacs files
	sed -i -e "/^dist_lisp_DATA/d" etc/Makefile.am || die

	eautoreconf
}

src_configure() {
	econf \
		$(use_enable crypt encryption) \
		$(use_enable curl) \
		$(use_enable mdb) \
		$(use_enable nls) \
		$(use_enable static-libs static)
}

src_compile() {
	default

	if use emacs ; then
		elisp-compile etc/*.el || die
	fi
}

src_install() {
	default
	use static-libs || find "${D}" -name '*.la' -delete

	if use emacs ; then
		elisp-install ${PN} etc/*.{el,elc} || die
		elisp-site-file-install "${FILESDIR}"/${SITEFILE} || die
	fi
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}
