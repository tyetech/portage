# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Audio-Wav/Attic/Audio-Wav-0.02.ebuild,v 1.13 2005/03/23 19:06:03 mcummings Exp $

inherit perl-module

DESCRIPTION="Modules for reading & writing Microsoft WAV files."
SRC_URI="http://www.cpan.org/modules/by-module/Audio/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Audio/${P}.readme"

SLOT="0"
LICENSE="Artistic"
KEYWORDS="x86 amd64 ppc sparc alpha hppa ia64"
IUSE=""
DEPEND="dev-perl/Audio-Tools"
