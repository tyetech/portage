# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/RPM/Attic/RPM-0.32-r1.ebuild,v 1.16 2004/07/14 20:21:38 agriffis Exp $

inherit perl-module

MY_P=Perl-${P}
S=${WORKDIR}/${MY_P}
DESCRIPTION="RPM:: module for perl"
SRC_URI="http://www.cpan.org/authors/id/RJRAY/${MY_P}.tar.gz"
HOMEPAGE="http://search.cpan.org/author/RJRAY/Perl-RPM-${PV}/"

SLOT="0"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 amd64 ppc sparc alpha"
IUSE=""

DEPEND="${DEPEND} app-arch/rpm"

export OPTIMIZE="${CFLAGS}"
mydoc="ToDo"
