# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-devel/cvs-repo/gentoo-x86/sys-devel/binutils/Attic/binutils-2.17.ebuild,v 1.19 2007/05/13 05:00:44 kumba Exp $

PATCHVER="1.1"
UCLIBC_PATCHVER="1.0"
ELF2FLT_VER=""
inherit toolchain-binutils

# ARCH - packages to test before marking
KEYWORDS="-* alpha ~amd64 arm ~hppa ia64 mips ppc ppc64 sh sparc ~sparc-fbsd ~x86 ~x86-fbsd"
