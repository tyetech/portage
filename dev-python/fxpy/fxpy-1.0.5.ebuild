# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/fxpy/Attic/fxpy-1.0.5.ebuild,v 1.7 2005/05/07 19:59:51 rphillips Exp $

inherit distutils eutils

MY_P="FXPy-${PV}"

S="${WORKDIR}/${MY_P}"
DESCRIPTION="Fox Toolkit GUI bindings for Python."
HOMEPAGE="http://fxpy.sourceforge.net"
SRC_URI="mirror://sourceforge/fxpy/${MY_P}.tar.gz"
LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="x86"
IUSE="opengl"
DEPEND=">=dev-lang/python-2.1
	>=x11-libs/fox-1.0.17
	opengl? ( >=dev-python/pyopengl-2.0.0.44 )"

src_unpack() {
	unpack ${A} || die
	cd ${S}
	epatch ${FILESDIR}/${P}-gentoo.diff || die "Patch failed."
}

src_install() {
	distutils_src_install
	dohtml doc/*
	insinto /usr/share/doc/${PF}/examples
	doins examples/*
	insinto /usr/share/doc/${PF}/examples/icons
	doins examples/icons/*
	insinto /usr/share/doc/${PF}/contrib
	doins contrib/*
}

