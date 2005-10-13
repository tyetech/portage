# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdesdk-kioslaves/Attic/kdesdk-kioslaves-3.4.3.ebuild,v 1.1 2005/10/13 00:09:59 danarmak Exp $

KMNAME=kdesdk
KMMODULE=kioslave
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="kioslaves from kdesdk package: the subversion kioslave"
KEYWORDS=" ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""
DEPEND="dev-util/subversion"


