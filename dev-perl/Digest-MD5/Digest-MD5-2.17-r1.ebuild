# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Digest-MD5/Attic/Digest-MD5-2.17-r1.ebuild,v 1.1 2002/05/05 16:02:26 seemant Exp $

# Inherit from perl-module.eclass
. /usr/portage/eclass/inherit.eclass || die
inherit perl-module

S=${WORKDIR}/${P}
DESCRIPTION="A URI Perl Module"
SRC_URI="http://cpan.valueclick.com/modules/by-category/14_Security_and_Encryption/Digest/${P}.tar.gz"
HOMEPAGE="http://cpan.valueclick.com/modules/by-category/14_Security_and_Encryption/Digest/${P}.readme"

mydoc="rfc*.txt"
