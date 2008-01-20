# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libsynaptics/Attic/libsynaptics-0.14.6c.ebuild,v 1.6 2008/01/20 18:50:16 angelos Exp $

inherit eutils

DESCRIPTION="library for accessing synaptics touchpads"
HOMEPAGE="http://qsynaptics.sourceforge.net/"
SRC_URI="http://qsynaptics.sourceforge.net/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

RDEPEND=">=x11-drivers/synaptics-0.14.4"

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc ChangeLog README TODO
}
