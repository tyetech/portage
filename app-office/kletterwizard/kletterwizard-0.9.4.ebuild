# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-office/cvs-repo/gentoo-x86/app-office/kletterwizard/Attic/kletterwizard-0.9.4.ebuild,v 1.2 2004/07/01 11:49:59 dholm Exp $

inherit kde

DESCRIPTION="KLetterWizard is a KDE application which simplifies letter writing and produces output via LaTeX."
HOMEPAGE="http://www.kluenter.de/klw.html"
SRC_URI="http://www.kluenter.de/${P}.tar.gz"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64 ~ppc"
IUSE=""

DEPEND=">=app-text/tetex-2.0.2
		>=dev-tex/g-brief-4.0.1
		>=kde-base/kdegraphics-3.2.0"
need-kde 3