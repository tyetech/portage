# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/xdotool/xdotool-2.20101012.3049.ebuild,v 1.3 2011/03/28 13:33:33 phajdan.jr Exp $

EAPI=2

inherit eutils toolchain-funcs flag-o-matic multilib

DESCRIPTION="Simulate keyboard input and mouse activity, move and resize windows."
HOMEPAGE="http://www.semicomplete.com/projects/xdotool/"
SRC_URI="http://semicomplete.googlecode.com/files/${P}.tar.gz"
LICENSE="as-is"

SLOT="0"
KEYWORDS="amd64 x86"
IUSE="examples"

DEPEND="x11-libs/libXtst
	x11-libs/libX11"

RDEPEND="${DEPEND}"

# The test wants to manualy start Xvfb, wont use VirtualX and it tries
# to run a full gnome-session. For such a tiny application i consider
# it overkill to rewrite the test scripts to not use it's own X server
# and add a full blown gnome just to run the tests.
RESTRICT="test"

src_prepare() {
	sed -e "s/installheader post-install$/installheader/" \
	    -i Makefile || die "sed failed"
}

src_compile() {
	tc-export CC LD
	default
}

src_install() {
	emake PREFIX="${D}usr" INSTALLMAN="${D}usr/share/man" INSTALLLIB="${D}usr/$(get_libdir)" install || die

	dodoc CHANGELIST README
	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins examples/*
	fi
}
