# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Log/Attic/PEAR-Log-1.8.4.ebuild,v 1.2 2004/08/03 20:08:20 agriffis Exp $

inherit php-pear

IUSE="pear-db"
DESCRIPTION="The Log framework provides an abstracted logging system supporting logging to console, file, syslog, SQL, and mcal targets."
LICENSE="PHP"
SLOT="0"
KEYWORDS="~x86 ~sparc ~alpha ~ppc ~ia64"
DEPEND="pear-db? ( dev-php/PEAR-DB )"
