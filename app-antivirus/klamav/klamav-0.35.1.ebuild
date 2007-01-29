# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-antivirus/cvs-repo/gentoo-x86/app-antivirus/klamav/Attic/klamav-0.35.1.ebuild,v 1.4 2007/01/29 03:03:46 mr_bones_ Exp $

inherit kde eutils flag-o-matic

MY_P="${P}-source"
S="${WORKDIR}/${MY_P}/${P}"

DESCRIPTION="KDE frontend for the ClamAV antivirus."
HOMEPAGE="http://klamav.sourceforge.net/"
SRC_URI="mirror://sourceforge/klamav/${MY_P}.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~ppc sparc x86"
IUSE=""

DEPEND="app-antivirus/clamav"

need-kde 3.4

PATCHES="${FILESDIR}/klamav-0.35.1-gcc-4.1.patch"
