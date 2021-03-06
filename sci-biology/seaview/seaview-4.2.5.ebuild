# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-biology/cvs-repo/gentoo-x86/sci-biology/seaview/seaview-4.2.5.ebuild,v 1.7 2012/09/14 11:46:14 jlec Exp $

EAPI=4

inherit base eutils multilib toolchain-funcs

DESCRIPTION="A graphical multiple sequence alignment editor"
HOMEPAGE="http://pbil.univ-lyon1.fr/software/seaview.html"
SRC_URI="ftp://pbil.univ-lyon1.fr/pub/mol_phylogeny/seaview/archive/${PN}_${PV}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+xft"

DEPEND="
	sys-libs/zlib
	x11-libs/fltk:1
	x11-libs/libX11
	xft? (
		x11-libs/libXft
		x11-libs/fltk:1[xft] )"
RDEPEND="${DEPEND}
	sci-biology/clustalw
	|| ( sci-libs/libmuscle sci-biology/muscle )
	sci-biology/phyml"

S="${WORKDIR}/${PN}"

src_prepare() {
	# respect CXXFLAGS (package uses them as CFLAGS)
	sed \
		-e "s:^CXX.*:CXX = $(tc-getCXX):" \
		-e "s:\$(OPT):${CXXFLAGS}:" \
		-e "s:^OPT:#OPT:" \
		-e "s:^FLTK = /usr/include:FLTK = /usr/include/fltk-1:" \
		-e "s:^#IFLTK .*:IFLTK = $(fltk-config --use-images --cxxflags):" \
		-e "s:^#LFLTK .*:LFLTK = $(fltk-config --use-images --ldflags):" \
		-e "s:^USE_XFT:#USE_XFT:" \
		-e "s:^#HELPFILE:HELPFILE:" \
		-e "s:^#PHYMLNAME:PHYMLNAME:" \
		-e 's:-lXinerama::g' \
		-e 's:-lpng::g' \
		-e 's:-ljpeg::g' \
		-e 's:-lfontconfig::g' \
		-i Makefile || die "sed failed while editing Makefile"

	if use xft; then
		sed \
			-e "s:^#USE_XFT .*:USE_XFT = -DUSE_XFT $(pkg-config --cflags xft):" \
			-e "s:-lXft:$(pkg-config --libs xft):" \
			-i Makefile || die "sed failed while editing Makefile to enable xft"
	else
		sed -i -e "s:-lXft::" Makefile || die
	fi
	cd FL || die
	ln -sf . FL
	base_src_prepare
}

src_install() {
	dobin seaview

	# /usr/share/seaview/seaview.html is hardcoded in the binary, see Makefile
	insinto /usr/share/seaview
	doins example.nxs seaview.html

	insinto /usr/share/seaview/images
	doins seaview.xpm

	make_desktop_entry seaview Seaview

	doman seaview.1
}
