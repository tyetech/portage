# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/vittk/vittk-1.3.ebuild,v 1.1 2011/03/13 04:55:51 radhermit Exp $

EAPI=4

inherit eutils autotools

DESCRIPTION="A front end for Taskwarrior (app-misc/task)"
HOMEPAGE="http://taskwarrior.org/wiki/taskwarrior/Vittk"
SRC_URI="http://taskwarrior.org/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-lang/tcl"
RDEPEND="${DEPEND}
	dev-lang/tk
	app-misc/task"

src_prepare() {
	epatch "${FILESDIR}"/${P}-configure.patch \
		"${FILESDIR}"/${P}-makefile.patch \
		"${FILESDIR}"/${PN}-1.1.1-dirs.patch
	eautoreconf
}

src_configure() {
	econf --docdir="${EPREFIX}"/usr/share/doc/${PF}
}
