# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Audio-Tools/Attic/Audio-Tools-0.01.ebuild,v 1.1 2002/10/30 12:38:12 aliz Exp $

inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Tools required by some Audio modules"
SRC_URI="http://www.cpan.org/modules/by-module/Audio/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Audio/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="~x86 ~ppc ~sparc ~sparc64 ~alpha"
