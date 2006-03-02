# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Image_Canvas/Attic/PEAR-Image_Canvas-0.3.0.ebuild,v 1.1 2006/03/02 15:58:28 sebastian Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Provides a common interface to image drawing, making image source
code independent on the library used."

LICENSE="PHP"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
RDEPEND="dev-php/PEAR-Image_Color"

pkg_setup() {
	require_gd
}
