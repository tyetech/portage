# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/class-returnvalue/Attic/class-returnvalue-0.52.ebuild,v 1.9 2006/07/05 14:06:42 ian Exp $

inherit perl-module

MY_P=Class-ReturnValue-${PV}

DESCRIPTION="A return-value object that lets you treat it as as a boolean, array or object"
HOMEPAGE="http://www.cpan.org/authors/id/J/JE/JESSE/"
SRC_URI="mirror://cpan/authors/id/J/JE/JESSE/${MY_P}.tar.gz"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="x86 ~ppc sparc alpha hppa amd64"
IUSE=""

DEPEND="dev-perl/Devel-StackTrace
	dev-perl/Test-Inline"
RDEPEND="${DEPEND}"

S=${WORKDIR}/${MY_P}
