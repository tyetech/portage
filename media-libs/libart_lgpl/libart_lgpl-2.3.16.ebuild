# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libart_lgpl/Attic/libart_lgpl-2.3.16.ebuild,v 1.15 2004/07/14 19:58:46 agriffis Exp $

inherit gnome2

DESCRIPTION="a LGPL version of libart"
HOMEPAGE="http://www.levien.com/libart"

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="ia64 x86 ppc sparc alpha hppa amd64 mips ppc64"
IUSE=""

DEPEND="dev-util/pkgconfig"
RDEPEND="virtual/libc"
# Add the RDEPEND so we dont have a runtime dep on pkg-config

DOCS="AUTHORS COPYING ChangeLog INSTALL NEWS README"
