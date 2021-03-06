# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libXScrnSaver/libXScrnSaver-1.2.1.ebuild,v 1.8 2011/02/14 23:11:30 xarthisius Exp $

EAPI=3
inherit xorg-2

DESCRIPTION="X.Org XScrnSaver library"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~ppc-aix ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~sparc-solaris ~x86-solaris"
IUSE=""

RDEPEND="x11-libs/libX11
	x11-libs/libXext
	>=x11-proto/scrnsaverproto-1.2"
DEPEND="${RDEPEND}"
