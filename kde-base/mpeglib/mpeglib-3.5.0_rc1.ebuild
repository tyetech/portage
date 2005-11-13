# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/mpeglib/Attic/mpeglib-3.5.0_rc1.ebuild,v 1.2 2005/11/13 16:01:05 flameeyes Exp $

KMNAME=kdemultimedia
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE mpeg library"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND="media-sound/cdparanoia"

myconf="--with-cdparanoia --enable-cdparanoia"
