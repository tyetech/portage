# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-proto/cvs-repo/gentoo-x86/x11-proto/inputproto/inputproto-2.2.ebuild,v 1.9 2012/08/26 18:14:17 armin76 Exp $

EAPI=4
inherit xorg-2

DESCRIPTION="X.Org Input protocol headers"

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~ppc-aix ~amd64-fbsd ~x86-fbsd ~x64-freebsd ~x86-freebsd ~ia64-hpux ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris ~x86-winnt"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
!<x11-libs/libXi-1.2.99"
