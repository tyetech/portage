# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-proto/cvs-repo/gentoo-x86/x11-proto/xcb-proto/xcb-proto-1.7.1.ebuild,v 1.9 2012/08/26 18:21:33 armin76 Exp $

EAPI=4
PYTHON_DEPEND="*"

inherit python xorg-2

DESCRIPTION="X C-language Bindings protocol headers"
HOMEPAGE="http://xcb.freedesktop.org/"
EGIT_REPO_URI="git://anongit.freedesktop.org/git/xcb/proto"
[[ ${PV} != 9999* ]] && \
	SRC_URI="http://xcb.freedesktop.org/dist/${P}.tar.bz2"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-libs/libxml2"

src_prepare() {
	python_clean_py-compile_files
	xorg-2_src_prepare
}

pkg_postinst() {
	python_mod_optimize xcbgen
	ewarn "Please rebuild both libxcb and xcb-util if you are upgrading from version 1.6"
}

pkg_postrm() {
	python_mod_cleanup xcbgen
}
