# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-HTML_QuickForm/PEAR-HTML_QuickForm-3.2.13.ebuild,v 1.1 2012/02/21 12:49:42 olemarkus Exp $

EAPI=4

inherit php-pear-r1

DESCRIPTION="The PEAR::HTML_QuickForm package provides methods for creating, validating, processing HTML forms."
LICENSE="PHP-3.01"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-php/PEAR-HTML_Common-1.2.1-r1"
