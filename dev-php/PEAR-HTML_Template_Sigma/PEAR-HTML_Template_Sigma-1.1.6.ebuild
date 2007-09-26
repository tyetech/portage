# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-HTML_Template_Sigma/Attic/PEAR-HTML_Template_Sigma-1.1.6.ebuild,v 1.5 2007/09/26 18:02:08 ranger Exp $

inherit php-pear-r1 depend.php

DESCRIPTION="An implementation of Integrated Templates API with template 'compilation' added"
LICENSE="PHP"
SLOT="0"
KEYWORDS="~alpha ~amd64 hppa ~ia64 ppc ppc64 ~sparc x86"
IUSE=""

pkg_setup() {
	require_php_with_use ctype
}
