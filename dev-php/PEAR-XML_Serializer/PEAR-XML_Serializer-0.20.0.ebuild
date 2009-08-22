# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-XML_Serializer/Attic/PEAR-XML_Serializer-0.20.0.ebuild,v 1.1 2009/08/22 18:28:48 beandog Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="Swiss-army knife for reading and writing XML files"

LICENSE="PHP-3"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-php/PEAR-XML_Parser-1.2.7
	>=dev-php/PEAR-XML_Util-1.1.1-r1"

pkg_setup() {
	require_php_with_use xml
}
