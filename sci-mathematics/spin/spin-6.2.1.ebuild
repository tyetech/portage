# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-mathematics/cvs-repo/gentoo-x86/sci-mathematics/spin/spin-6.2.1.ebuild,v 1.1 2012/05/21 13:05:22 phajdan.jr Exp $

EAPI="4"

inherit eutils versionator

MY_PV=$(replace_all_version_separators '')
MY_P="${PN}${MY_PV}"

DESCRIPTION="Tool for formal verification of distributed software systems."
HOMEPAGE="http://spinroot.com/"
SRC_URI="http://spinroot.com/spin/Src/${MY_P}.tar.gz"

LICENSE="|| ( spin-commercial spin-educational )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="graphviz tk"

DEPEND="sys-devel/bison"
RDEPEND="sys-devel/gcc
	sys-process/time
	tk? (
		dev-lang/tk
		graphviz? ( media-gfx/graphviz )
	)"

S="${WORKDIR}/Spin/Src${PV}"

src_prepare() {
	epatch "${FILESDIR}/${PN}-6.2.1-makefile.patch"
}

src_install() {
	dobin spin
	doman ../Man/spin.1
	dodoc ../Doc/*
	if use tk; then
		newbin "${WORKDIR}/Spin/iSpin/ispin.tcl" ispin
		make_desktop_entry ispin
	fi
}
