# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Parse-RecDescent/Attic/Parse-RecDescent-1.80-r2.ebuild,v 1.2 2002/05/21 18:14:07 danarmak Exp $


inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="Perl Module"
SRC_URI="http://cpan.valueclick.com/modules/by-module/Parse/${P}.tar.gz"
HOMEPAGE="http://cpan.valueclick.com/modules/by-module/Parse/${P}.readme"

src_install () {
	
	base_src_install
	dohtml -r tutorial
}
