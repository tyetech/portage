# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/numarray/Attic/numarray-0.9.ebuild,v 1.4 2004/06/25 01:35:01 agriffis Exp $

inherit distutils

DESCRIPTION="Numarray is an array processing package designed to efficiently manipulate large multi-dimensional arrays"
SRC_URI="mirror://sourceforge/numpy/${P}.tar.gz"
HOMEPAGE="http://www.stsci.edu/resources/software_hardware/numarray"

DEPEND=">=dev-lang/python-2.2.2"

IUSE=""
SLOT="0"
KEYWORDS="~x86 ~ppc s390"
LICENSE="BSD"
