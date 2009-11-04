# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/plasma-indicatordisplay/Attic/plasma-indicatordisplay-0.4.2.ebuild,v 1.1 2009/11/04 15:59:36 scarabeus Exp $

EAPI=2

inherit kde4-base

DESCRIPTION="QT wrapper for libindicate library"
HOMEPAGE="https://launchpad.net/libindicate-qt/"
SRC_URI="http://launchpad.net/${PN}/trunk/${PV}/+download/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-libs/libindicate-qt-0.2.2
"
DEPEND="${RDEPEND}
	dev-util/pkgconfig
"
