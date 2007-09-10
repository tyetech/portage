# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/setxkbmap/Attic/setxkbmap-1.0.4.ebuild,v 1.7 2007/09/10 03:10:48 jer Exp $

# Must be before x-modular eclass is inherited
# SNAPSHOT="yes"

inherit x-modular

PATCHES=""

DESCRIPTION="Controls the keyboard layout of a running X server."

KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh ~sparc x86 ~x86-fbsd"

RDEPEND="x11-libs/libxkbfile
	x11-libs/libX11"
DEPEND="${RDEPEND}"
