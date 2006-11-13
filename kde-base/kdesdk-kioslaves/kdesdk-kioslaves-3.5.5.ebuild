# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdesdk-kioslaves/Attic/kdesdk-kioslaves-3.5.5.ebuild,v 1.2 2006/11/13 10:38:13 opfer Exp $

KMNAME=kdesdk
KMMODULE=kioslave
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kioslaves from kdesdk package: the subversion kioslave"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc x86"
IUSE=""
DEPEND="dev-util/subversion"


