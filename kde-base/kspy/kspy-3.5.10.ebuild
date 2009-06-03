# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kspy/Attic/kspy-3.5.10.ebuild,v 1.3 2009/06/03 15:34:13 ranger Exp $

KMNAME=kdesdk
EAPI="1"
inherit kde-meta eutils

DESCRIPTION="kspy - an utility intended to help developers examine the internal state of a Qt/KDE application"
KEYWORDS="~alpha ~amd64 ~hppa ppc ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"

RESTRICT="test"
