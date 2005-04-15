# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gnustep-apps/cvs-repo/gentoo-x86/gnustep-apps/aclock/Attic/aclock-0.2.3.ebuild,v 1.2 2005/04/15 05:16:44 fafhrd Exp $

inherit gnustep

DESCRIPTION="A clock!"
HOMEPAGE="http://www.linuks.mine.nu/aclock/"
SRC_URI="http://www.linuks.mine.nu/aclock/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="ppc x86"

IUSE="${IUSE}"
DEPEND="${GS_DEPEND}"
RDEPEND="${GS_RDEPEND}"

egnustep_install_domain "Local"

