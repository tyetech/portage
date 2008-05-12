# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkscan/Attic/libkscan-3.5.9.ebuild,v 1.4 2008/05/12 20:01:23 ranger Exp $

KMNAME=kdegraphics
EAPI="1"
inherit kde-meta eutils

DESCRIPTION="KDE scanner library"
KEYWORDS="alpha ~amd64 ia64 ppc ~ppc64 sparc ~x86"
LICENSE="LGPL-2"
IUSE=""

DEPEND="media-gfx/sane-backends"
RDEPEND="${DEPEND}"
