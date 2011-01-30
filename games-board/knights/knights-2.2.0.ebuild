# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-board/cvs-repo/gentoo-x86/games-board/knights/Attic/knights-2.2.0.ebuild,v 1.4 2011/01/30 11:48:26 phajdan.jr Exp $

EAPI=3

QT_MINIMAL="4.6.0"
KDE_LINGUAS="cs da de en_GB eo es et fr hu it ja lt nds nl pl pt_BR ru sk sr sv
uk zh_TW"
inherit kde4-base

DESCRIPTION="A simple chess board for KDE"
HOMEPAGE="http://kde-apps.org/content/show.php/Knights?content=122046"
SRC_URI="http://dl.dropbox.com/u/2888238/Knights/${P}.tar.bz2"

LICENSE="GPL-3"
KEYWORDS="amd64 x86"
SLOT="4"
IUSE="debug +handbook"

DEPEND="$(add_kdebase_dep libkdegames)"
RDEPEND="${DEPEND}"
