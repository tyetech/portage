# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-dicts/cvs-repo/gentoo-x86/app-dicts/aspell-hu/aspell-hu-0.99.4.2.ebuild,v 1.10 2012/05/17 20:00:30 aballier Exp $

ASPELL_LANG="Hungarian"
ASPOSTFIX="6"

inherit aspell-dict

LICENSE="GPL-2"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~ppc ~ppc64 ~sparc ~x86 ~amd64-fbsd ~sparc-fbsd ~x86-fbsd"
IUSE=""

FILENAME="aspell6-hu-0.99.4.2-0"
SRC_URI="mirror://gnu/aspell/dict/hu/${FILENAME}.tar.bz2"

S="${WORKDIR}/${FILENAME}"
