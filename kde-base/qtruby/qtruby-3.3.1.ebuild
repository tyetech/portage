# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/qtruby/Attic/qtruby-3.3.1.ebuild,v 1.2 2004/12/10 20:22:02 danarmak Exp $

KMNAME=kdebindings
KMCOPYLIB="libsmokeqt smoke/qt"
KM_MAKEFILESREV=1
inherit kde-meta

DESCRIPTION="Ruby bindings for QT"
KEYWORDS="~x86"
IUSE=""
DEPEND=">=virtual/ruby-1.8 ~kde-base/smoke-$PV"
PATCHES="$FILESDIR/no-gtk-glib-check.diff"

