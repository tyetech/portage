# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/Attic/64-bit.eclass,v 1.7 2005/07/11 15:08:06 swegener Exp $

# Recognize 64-bit arches...
# Example:
#      64-bit && epatch ${P}-64bit.patch
#

64-bit() {
	[[ ${PN} != "R" && ${PN} != "rxvt-unicode" ]] && die "DO NOT USE THIS ECLASS"

	case "${ARCH}" in
		alpha|*64) return 0 ;;
		*)         return 1 ;;
	esac
}
