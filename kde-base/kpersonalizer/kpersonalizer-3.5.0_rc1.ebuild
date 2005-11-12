# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kpersonalizer/Attic/kpersonalizer-3.5.0_rc1.ebuild,v 1.1 2005/11/12 15:49:31 danarmak Exp $

KMNAME=kdebase
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE basic settings wizard"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

KMEXTRACTONLY="libkonq"

