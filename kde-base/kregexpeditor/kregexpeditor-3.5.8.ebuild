# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kregexpeditor/Attic/kregexpeditor-3.5.8.ebuild,v 1.4 2008/01/30 10:38:49 opfer Exp $

KMNAME=kdeutils
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE: Editor for Regular Expressions"
KEYWORDS="alpha amd64 ia64 ~ppc ~ppc64 sparc x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"

KMEXTRA="doc/KRegExpEditor"
