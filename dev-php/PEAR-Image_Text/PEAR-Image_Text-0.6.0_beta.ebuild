# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Image_Text/Attic/PEAR-Image_Text-0.6.0_beta.ebuild,v 1.1 2007/10/08 12:05:31 anant Exp $

PEAR_PV="${PV/_/}"
inherit php-pear-r1 depend.php

DESCRIPTION="Advanced text manipulations in images."
LICENSE="PHP"
SLOT="0"

KEYWORDS="~amd64 ~x86"
IUSE=""

pkg_setup() {
	require_gd
}
