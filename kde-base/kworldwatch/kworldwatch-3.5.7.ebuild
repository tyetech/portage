# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kworldwatch/Attic/kworldwatch-3.5.7.ebuild,v 1.5 2007/08/08 16:46:21 armin76 Exp $

KMNAME=kdetoys
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE program that displays the part of the Earth lit up by the Sun"
KEYWORDS="alpha ~amd64 ia64 ppc ~ppc64 sparc ~x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"
DEPEND=""

# kworldwatch is more commonly known as kworldclock
KMEXTRA="doc/kworldclock"
