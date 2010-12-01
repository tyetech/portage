# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/skanlite/Attic/skanlite-0.7.ebuild,v 1.1 2010/12/01 14:46:42 scarabeus Exp $

EAPI=3

KDE_LINGUAS="be ca ca@valencia cs da de el en_GB eo es et eu fr ga gl hr hu is
it ja km ko lt lv mai nb nds nl nn pa pl pt pt_BR ro ru sk sv tr uk wa zh_CN zh_TW"
KDE_DOC_DIRS="doc doc-translations/%lingua_${PN}"

inherit kde4-base

DESCRIPTION="KDE image scanning application"
HOMEPAGE="http://www.kde.org/"
SRC_URI="mirror://sourceforge/sanewidget/Skanlite/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE="debug +handbook"

DEPEND="$(add_kdebase_dep libksane)"
RDEPEND="${DEPEND}"
