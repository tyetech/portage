# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/kdenlive/Attic/kdenlive-0.2.4.ebuild,v 1.6 2004/06/29 12:10:27 carlo Exp $

inherit kde

DESCRIPTION="Kdenlive! (pronounced Kay-den-live) is a Non Linear Video Editing Suite for KDE."
HOMEPAGE="http://www.uchian.pwp.blueyonder.co.uk/kdenlive.html"
SRC_URI="mirror://sourceforge/kdenlive/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc ~sparc"
IUSE=""

DEPEND=">=media-video/piave-0.2.4
	>=kde-base/kdesdk-3.2"
need-kde 3
