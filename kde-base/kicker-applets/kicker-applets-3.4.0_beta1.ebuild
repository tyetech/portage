# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kicker-applets/Attic/kicker-applets-3.4.0_beta1.ebuild,v 1.1 2005/02/11 16:31:18 caleb Exp $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="kicker applets"
KEYWORDS="~x86"
IUSE="xmms"
OLDDEPEND="~kde-base/kicker-$PV ~kde-base/kdeaddons-docs-kicker-applets-$PV
	xmms? ( media-sound/xmms )"
DEPEND="xmms? ( media-sound/xmms )
$(deprange-dual $PV $MAXKDEVER kde-base/kicker)
$(deprange-dual $PV $MAXKDEVER kde-base/kdeaddons-docs-kicker-applets)"

use xmms || export ac_cv_have_xmms=no


