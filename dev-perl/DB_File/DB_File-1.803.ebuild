# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Jerry Alexandratos <jerry@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/DB_File/Attic/DB_File-1.803.ebuild,v 1.1 2002/05/05 16:02:26 seemant Exp $

# Inherit the perl-module.eclass functions
. /usr/portage/eclass/inherit.eclass || die
inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="A Berkeley DB Support Perl Module"
SRC_URI="http://www.cpan.org/modules/by-module/DB_File/${P}.tar.gz"
HOMEPAGE="http://www.cpan.org/modules/by-module/DB_File/${P}.readme"

DEPEND="${DEPEND}
		>=sys-libs/db-3.2"

mydoc="Changes"

src_compile() {

	cp ${FILESDIR}/config.in .
	base_src_compile

}
