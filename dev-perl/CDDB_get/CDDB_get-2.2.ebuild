# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/CDDB_get/Attic/CDDB_get-2.2.ebuild,v 1.4 2004/05/07 15:42:41 gustavoz Exp $

inherit perl-module

S="${WORKDIR}/${P}"
DESCRIPTION="Read the CDDB entry for an audio CD in your drive"
SRC_URI="http://armin.emx.at/cddb/${P}.tar.gz"
HOMEPAGE="http://armin.emx.at/cddb/"

SLOT="2"
LICENSE="Artistic | GPL-2"
KEYWORDS="x86 amd64 ~ppc sparc ~alpha"
