# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeadmin-kfile-plugins/Attic/kdeadmin-kfile-plugins-3.5.5.ebuild,v 1.8 2006/12/06 12:57:05 kloeri Exp $
KMNAME=kdeadmin
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta
KMMODULE=kfile-plugins

DESCRIPTION="kfile plugins from kdeadmin"
KEYWORDS="alpha amd64 ~ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"
DEPEND=""

