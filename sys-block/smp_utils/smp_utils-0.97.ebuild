# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-block/cvs-repo/gentoo-x86/sys-block/smp_utils/smp_utils-0.97.ebuild,v 1.1 2012/02/23 07:20:01 radhermit Exp $

EAPI=4

inherit autotools-utils

DESCRIPTION="Utilities for SAS management protocol (SMP)"
HOMEPAGE="http://sg.danny.cz/sg/smp_utils.html"
SRC_URI="http://sg.danny.cz/sg/p/${P}.tgz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="static-libs"

DOCS=( AUTHORS ChangeLog COVERAGE CREDITS README )

AUTOTOOLS_IN_SOURCE_BUILD=1
