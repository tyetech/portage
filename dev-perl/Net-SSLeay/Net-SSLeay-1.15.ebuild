# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author: Tools Team <tools@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Net-SSLeay/Attic/Net-SSLeay-1.15.ebuild,v 1.2 2002/05/21 18:14:07 danarmak Exp $


inherit perl-module

S=${WORKDIR}/Net_SSLeay.pm-${PV}
DESCRIPTION="Net::SSLeay module for perl"
SRC_URI="http://www.cpan.org/authors/id/SAMPO/Net_SSLeay.pm-${PV}.tar.gz"

DEPEND="${DEPEND} dev-libs/openssl"
LICENSE="Artistic | GPL-2"
SLOT="0"

export OPTIMIZE="$CFLAGS"
