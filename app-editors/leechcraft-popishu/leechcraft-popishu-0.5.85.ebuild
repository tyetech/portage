# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/leechcraft-popishu/leechcraft-popishu-0.5.85.ebuild,v 1.1 2012/10/08 15:50:06 pinkbyte Exp $

EAPI="4"

inherit leechcraft

DESCRIPTION="Popishu, the text editor with IDE features for LeechCraft."

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="~net-misc/leechcraft-core-${PV}
	x11-libs/qscintilla"
RDEPEND="${DEPEND}"
