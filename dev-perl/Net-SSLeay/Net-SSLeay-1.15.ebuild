# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Net-SSLeay/Attic/Net-SSLeay-1.15.ebuild,v 1.3 2002/07/11 06:30:22 drobbins Exp $


inherit perl-module

S=${WORKDIR}/Net_SSLeay.pm-${PV}
DESCRIPTION="Net::SSLeay module for perl"
SRC_URI="http://www.cpan.org/authors/id/SAMPO/Net_SSLeay.pm-${PV}.tar.gz"

DEPEND="${DEPEND} dev-libs/openssl"
LICENSE="Artistic | GPL-2"
SLOT="0"

export OPTIMIZE="$CFLAGS"
