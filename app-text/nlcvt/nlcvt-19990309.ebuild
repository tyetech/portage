# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-text/cvs-repo/gentoo-x86/app-text/nlcvt/Attic/nlcvt-19990309.ebuild,v 1.4 2004/06/24 22:45:45 agriffis Exp $

DESCRIPTION="A perl script to convert between various line terminators"
HOMEPAGE="http://www.perl.com/language/ppt/src/nlcvt/"
SRC_URI="http://www.perl.com/language/ppt/src/nlcvt/nlcvt
	http://www.perl.com/language/ppt/src/nlcvt/nlcvt.html"

LICENSE="freedist"
SLOT="0"
KEYWORDS="x86"

DEPEND="dev-lang/perl"

src_install() {
	dobin ${DISTDIR}/nlcvt
	dohtml ${DISTDIR}/nlcvt.html
}
