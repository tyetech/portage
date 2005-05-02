# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Log/Attic/PEAR-Log-1.8.4.ebuild,v 1.11 2005/05/02 05:18:04 vapier Exp $

inherit php-pear

DESCRIPTION="The Log framework provides an abstracted logging system supporting logging to console, file, syslog, SQL, and mcal targets"

LICENSE="PHP"
SLOT="0"
KEYWORDS="alpha amd64 hppa ia64 ppc ppc64 ~sparc x86"
IUSE="pear-db"

DEPEND="pear-db? ( dev-php/PEAR-DB )"
