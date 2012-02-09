# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Image_Color/Attic/PEAR-Image_Color-1.0.4.ebuild,v 1.1 2012/02/09 11:06:39 mabi Exp $

EAPI=4

inherit php-pear-r1

DESCRIPTION="Manages and handles color data and conversions."

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND="dev-lang/php[gd]"
