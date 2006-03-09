# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Mail_Mime/Attic/PEAR-Mail_Mime-1.3.1-r2.ebuild,v 1.1 2006/03/09 20:45:49 chtekk Exp $

inherit php-pear-r1 eutils

DESCRIPTION="Provides classes to deal with creation and manipulation of mime messages"

LICENSE="PHP"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sparc ~x86"
IUSE=""

src_unpack() {
	unpack ${A}

	cd "${S}"

	# Fix DOS encodings
	edos2unix *

	# Fix bug #125451
	epatch "${FILESDIR}/php-pass-by-reference-fix.patch"
}
