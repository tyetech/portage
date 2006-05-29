# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/librss/Attic/librss-3.5.0.ebuild,v 1.14 2006/05/29 21:50:15 weeve Exp $

KMNAME=kdenetwork
MAXKDEVER=3.5.2
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE rss library"
KEYWORDS="~alpha amd64 ~ia64 ~ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""