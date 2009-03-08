# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-tex/cvs-repo/gentoo-x86/dev-tex/dot2tex/Attic/dot2tex-2.8.5.ebuild,v 1.1 2009/03/08 15:49:37 aballier Exp $

inherit distutils

DESCRIPTION="A Graphviz to LaTeX converter"
HOMEPAGE="http://www.fauskes.net/code/dot2tex/"
SRC_URI="http://dot2tex.googlecode.com/files/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE="doc examples"

DEPEND=""
RDEPEND=">=dev-python/pyparsing-1.4.8
	media-gfx/pydot
	media-gfx/graphviz"

DOCS="changelog.txt"

src_install() {
	distutils_src_install
	if use doc; then
		dohtml -r doc/*
		dodoc doc/usage.{txt,pdf}
	fi
	if use examples; then
		insinto "/usr/share/doc/${PF}/examples"
		doins examples/*
	fi
}
