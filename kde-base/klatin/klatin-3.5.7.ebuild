# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/klatin/Attic/klatin-3.5.7.ebuild,v 1.8 2007/08/11 16:17:53 armin76 Exp $
KMNAME=kdeedu
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="KDE: KLatin - a program to help revise Latin"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""

DEPEND="$(deprange $PV $MAXKDEVER kde-base/libkdeedu)"

RDEPEND="${DEPEND}"

KMEXTRACTONLY="libkdeedu/kdeeducore"
KMCOPYLIB="libkdeeducore libkdeedu/kdeeducore"
