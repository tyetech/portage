# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Email-FolderType/Attic/Email-FolderType-0.813.ebuild,v 1.1 2008/01/02 10:16:02 joslwah Exp $

inherit perl-module

DESCRIPTION="Determine the type of a mail folder"
SRC_URI="mirror://cpan/authors/id/R/RJ/RJBS/${P}.tar.gz"
HOMEPAGE="http://search.cpan.org/~rjbs/"

LICENSE="Artistic"
KEYWORDS="~amd64"
IUSE=""

SRC_TEST="do"
SLOT="0"

DEPEND="dev-lang/perl dev-perl/Module-Pluggable"

