# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-util/cvs-repo/gentoo-x86/dev-util/global/global-5.9.7.ebuild,v 1.3 2012/09/09 16:02:29 armin76 Exp $

EAPI="4"

inherit elisp-common

DESCRIPTION="GNU Global is a tag system to find the locations of a specified object in various sources."
HOMEPAGE="http://www.gnu.org/software/global/global.html"
SRC_URI="mirror://gnu/${PN}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-fbsd"
IUSE="doc emacs vim"

RDEPEND="emacs? ( virtual/emacs )
	vim? ( || ( app-editors/vim app-editors/gvim ) )"
DEPEND="${DEPEND}
	doc? ( app-text/texi2html sys-apps/texinfo )"

SITEFILE="50gtags-gentoo.el"

src_configure() {
	econf "$(use_with emacs lispdir "${SITELISP}/${PN}")"
}

src_compile() {
	if use doc; then
		texi2pdf -q -o doc/global.pdf doc/global.texi
		texi2html -o doc/global.html doc/global.texi
	fi

	if use emacs; then
		elisp-compile *.el || die "elisp-compile failed"
	fi

	emake
}

src_install() {
	emake DESTDIR="${D}" install

	if use doc; then
		dohtml doc/global.html
		[[ -f doc/global.pdf ]] && dodoc doc/global.pdf
	fi

	dodoc AUTHORS FAQ NEWS README THANKS

	insinto /etc
	doins gtags.conf

	if use vim; then
		insinto /usr/share/vim/vimfiles/plugin
		doins gtags.vim
	fi

	if use emacs; then
		elisp-install ${PN} *.{el,elc} || die "elisp-install failed"
		elisp-site-file-install "${FILESDIR}/${SITEFILE}" || die "elisp-site-file-install failed"
	fi
}

pkg_postinst() {
	use emacs && elisp-site-regen
}

pkg_postrm() {
	use emacs && elisp-site-regen
}
