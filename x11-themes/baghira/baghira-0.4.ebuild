# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-themes/cvs-repo/gentoo-x86/x11-themes/baghira/Attic/baghira-0.4.ebuild,v 1.2 2004/08/03 19:32:49 centic Exp $

inherit kde

DESCRIPTION="Baghira - an OS-X like style for KDE-3.2"
HOMEPAGE="http://www.kde-look.org/content/show.php?content=8692"
SRC_URI="mirror://sourceforge/baghira/${P}.tar.bz2"

SLOT="0"
LICENSE="BSD"
KEYWORDS="x86 ~ppc ~amd64"
IUSE=""

need-kde 3.2
