# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdesdk/Attic/kdesdk-3.3.0.ebuild,v 1.8 2004/09/24 01:49:12 caleb Exp $
inherit eutils kde-dist

IUSE=""
DESCRIPTION="KDE SDK: kbabel, ..."
KEYWORDS="x86 ~amd64 sparc ppc"

DEPEND="x86? ( dev-util/callgrind )
	media-gfx/graphviz
	sys-devel/flex"

RDEPEND="$DEPEND
	dev-util/cvs"

src_unpack()
{
	kde_src_unpack
	epatch ${FILESDIR}/3.3.0-kbabel.diff
}
