# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kjsembed/Attic/kjsembed-3.3.1.ebuild,v 1.3 2004/12/11 17:54:27 danarmak Exp $

KMNAME=kdebindings
KM_MAKEFILESREV=1
inherit kde-meta

DESCRIPTION="KDE javascript parser and embedder"
KEYWORDS="~x86"
IUSE=""
DEPEND="~kde-base/kdebase-$PV"
PATCHES="$FILESDIR/no-gtk-glib-check.diff"

# Probably missing some deps, too
