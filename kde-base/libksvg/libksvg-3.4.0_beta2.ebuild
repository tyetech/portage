# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libksvg/Attic/libksvg-3.4.0_beta2.ebuild,v 1.2 2005/02/11 15:10:19 danarmak Exp $

KMNAME=kdegraphics
KMMODULE=ksvg
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE SVG library"
KEYWORDS="~x86"
IUSE=""
DEPEND="dev-libs/fribidi !kde-base/ksvg"
KMNODOC="true"
KMEXTRACTONLY="ksvg/plugin/"