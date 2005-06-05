# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/kexchange/Attic/kexchange-1.0.ebuild,v 1.4 2005/06/05 11:42:51 hansmi Exp $

inherit kde

DESCRIPTION="A currency converter for KDE"
HOMEPAGE="http://www.favorin.com/projects/kexchange/"
SRC_URI="mirror://sourceforge/kexchange/${P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="amd64 ppc ~sparc x86"
IUSE=""

need-kde 3
