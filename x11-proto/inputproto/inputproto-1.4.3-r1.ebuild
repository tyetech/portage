# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-proto/cvs-repo/gentoo-x86/x11-proto/inputproto/Attic/inputproto-1.4.3-r1.ebuild,v 1.1 2008/03/12 03:50:27 dberkholz Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org Input protocol headers"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~m68k ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~x86-fbsd"

RDEPEND=""
DEPEND="${RDEPEND}"

PATCHES="
	${FILESDIR}/0001-C-sucks-define-XEventClass-in-terms-of-unsigned-int.patch
	${FILESDIR}/0002-Typo-fix.patch
	"
