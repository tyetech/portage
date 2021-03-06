# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lang/cvs-repo/gentoo-x86/dev-lang/yasm/yasm-1.2.0.ebuild,v 1.8 2012/06/16 10:48:02 grobian Exp $

EAPI=4
PYTHON_DEPEND="python? 2:2.7"
inherit autotools eutils python

DESCRIPTION="An assembler for x86 and x86_64 instruction sets"
HOMEPAGE="http://www.tortall.net/projects/yasm/"
SRC_URI="http://www.tortall.net/projects/yasm/releases/${P}.tar.gz"

LICENSE="BSD-2 BSD || ( Artistic GPL-2 LGPL-2 )"
SLOT="0"
KEYWORDS="-* amd64 x86 ~amd64-fbsd ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~x64-macos ~x86-macos ~x86-solaris"
IUSE="nls python"

RDEPEND="nls? ( virtual/libintl )"
DEPEND="nls? ( sys-devel/gettext )
	python? ( >=dev-python/cython-0.14 )"

DOCS=( AUTHORS )

pkg_setup() {
	if use python; then
		python_set_active_version 2
		python_pkg_setup
	fi
}

src_prepare() {
	epatch "${FILESDIR}/${P}-fix_cython_check.patch"
	# ksh doesn't grok $(xxx), makes aclocal fail
	sed -i -e '1c\#!/usr/bin/env sh' YASM-VERSION-GEN.sh || die
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable python) \
		$(use_enable python python-bindings) \
		$(use_enable nls)
}
