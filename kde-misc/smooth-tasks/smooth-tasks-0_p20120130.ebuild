# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/smooth-tasks/smooth-tasks-0_p20120130.ebuild,v 1.2 2012/02/01 16:02:36 johu Exp $

EAPI=4

KDE_MINIMAL="4.8"
KDE_LINGUAS="cs de fr hu pl ru zh_CN"
inherit kde4-base

DESCRIPTION="Alternate taskbar KDE plasmoid, similar to Windows 7"
HOMEPAGE="https://bitbucket.org/flupp/smooth-tasks-fork"
SRC_URI="http://dev.gentoo.org/~johu/distfiles/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="
	$(add_kdebase_dep libtaskmanager)
"
RDEPEND="${DEPEND}
	$(add_kdebase_dep plasma-workspace)
"

PATCHES=(
	"${FILESDIR}/${P}-kde48.patch"
)

S="${WORKDIR}/${PN}"
