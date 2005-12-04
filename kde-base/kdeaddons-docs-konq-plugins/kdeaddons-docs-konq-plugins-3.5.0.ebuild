# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeaddons-docs-konq-plugins/Attic/kdeaddons-docs-konq-plugins-3.5.0.ebuild,v 1.3 2005/12/04 12:40:17 kloeri Exp $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="doc/konq-plugins"
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta

DESCRIPTION="Documentation for the konqueror plugins from kdeaddons"
KEYWORDS="~alpha ~amd64 ~sparc ~x86"
IUSE=""
DEPEND=""

