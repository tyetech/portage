# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-devel/cvs-repo/gentoo-x86/sys-devel/gcc/gcc-2.95.3-r10.ebuild,v 1.9 2012/09/28 03:13:09 zmedico Exp $

PATCH_VER="1.3"

inherit toolchain eutils flag-o-matic

DESCRIPTION="The GNU Compiler Collection"

KEYWORDS="~alpha ~ppc ~sparc ~x86"

gcc2-flags() {
	# Are we trying to compile with gcc3 ?  CFLAGS and CXXFLAGS needs to be
	# valid for gcc-2.95.3 ...
	if [[ $(tc-arch) == "x86" || $(tc-arch) == "amd64" ]] ; then
		CFLAGS=${CFLAGS//-mtune=/-mcpu=}
		CXXFLAGS=${CXXFLAGS//-mtune=/-mcpu=}
	fi

	replace-cpu-flags k6-{2,3} k6
	replace-cpu-flags athlon{,-{tbird,4,xp,mp}} i686

	replace-cpu-flags pentium-mmx i586
	replace-cpu-flags pentium{2,3,4} i686

	replace-cpu-flags ev6{7,8} ev6
}

src_compile() {
	strip-linguas -u */po
	gcc2-flags
	toolchain_src_compile
}
