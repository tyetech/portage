# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-devel/cvs-repo/gentoo-x86/sys-devel/binutils/Attic/binutils-2.15.91.0.1-r1.ebuild,v 1.12 2004/12/29 00:30:53 vapier Exp $

PATCHVER="1.4"
inherit toolchain-binutils

KEYWORDS="-* ~ppc64"

src_unpack() {
	toolchain-binutils_src_unpack
	apply_binutils_updates
}
