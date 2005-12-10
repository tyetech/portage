# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/konq-plugins/Attic/konq-plugins-3.4.3.ebuild,v 1.7 2005/12/10 23:05:30 kloeri Exp $
KMNAME=kdeaddons
KMNODOCS=true
MAXKDEVER=$PV
inherit kde-meta

DESCRIPTION="Various plugins for konqueror"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE=""
DEPEND="$(deprange-dual $PV $MAXKDEVER kde-base/konqueror)"
RDEPEND="${DEPEND}
$(deprange 3.4.1 $MAXKDEVER kde-base/kdeaddons-docs-konq-plugins)"

# Don't install the akregator plugin, since it depends on akregator, which is
# a heavy dep.
KMEXTRACTONLY="konq-plugins/akregator"
