# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Data-ShowTable/Attic/Data-ShowTable-3.3-r1.ebuild,v 1.1 2002/05/05 16:02:26 seemant Exp $

# Inherit from perl-module.eclass functions
. /usr/portage/eclass/inherit.eclass || die
inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="The Perl ShowTable Module"
SRC_URI="http://www.cpan.org/modules/by-module/Data/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/Data/${P}.readme"
LICENSE="GPL-2"
SLOT="0"

mydoc="Copyright GNU-LICENSE"

src_install () {

	base_src_install
	dohtml *.html
}
