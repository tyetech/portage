# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcachegrind/Attic/kcachegrind-3.5.2.ebuild,v 1.9 2006/08/05 00:20:23 weeve Exp $

KMNAME=kdesdk
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE Frontend for Cachegrind"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE=""

DEPEND="x86? ( || ( >=dev-util/valgrind-3.2.0
					dev-util/callgrind ) )"

RDEPEND="${DEPEND}
	media-gfx/graphviz"
