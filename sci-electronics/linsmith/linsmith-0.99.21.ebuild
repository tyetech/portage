# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-electronics/cvs-repo/gentoo-x86/sci-electronics/linsmith/linsmith-0.99.21.ebuild,v 1.4 2012/05/04 07:10:20 jdhore Exp $

EAPI="2"

inherit eutils autotools

DESCRIPTION="Smith charting program, mainly designed for educational use."
HOMEPAGE="http://www.jcoppens.com/soft/linsmith/index.en.php"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="doc examples"

RDEPEND="
	x11-libs/gtk+:2
	dev-libs/libxml2:2
	dev-libs/glib:2
	dev-libs/atk
	gnome-base/libgnome
	gnome-base/libgnomecanvas
	gnome-base/libgnomeui"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	# This patch is to prevent make install copying
	# the examples in /usr/share/linsmith
	# Now they are cp to the correct location.
	epatch \
		"${FILESDIR}"/${PN}-datafiles.patch

	# fix QA warnings about 'maintainer mode'
	eautoreconf
}

src_install() {
	# Delete this file, otherwise it is installed with the pixmaps.
	rm pixmaps/Makefile.am~

	emake DESTDIR="${D}" install || die "emake install failed"

	insinto "/usr/share/${PN}"
	doins datafiles/conv0809 || die

	dodoc AUTHORS ChangeLog NEWS NOTES README THANKS TODO || die
	doman doc/linsmith.1 || die

	domenu linsmith.desktop || die
	doicon linsmith_icon.xpm || die

	if use doc; then
		insinto "/usr/share/doc/${PF}"
		doins doc/manual.pdf || die
	fi

	if use examples; then
		insinto "/usr/share/doc/${PF}/examples"
		doins datafiles/*.circ datafiles/*.load || die
	fi
}
