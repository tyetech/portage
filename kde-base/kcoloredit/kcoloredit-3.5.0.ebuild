# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcoloredit/Attic/kcoloredit-3.5.0.ebuild,v 1.4 2005/12/12 17:13:46 josejx Exp $

KMNAME=kdegraphics
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE color selector/editor"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"
IUSE=""