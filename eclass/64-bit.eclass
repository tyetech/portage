# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/Attic/64-bit.eclass,v 1.3 2004/06/25 00:39:48 vapier Exp $

# Recognize 64-bit arches... This is to help when adding -fPIC, for
# example:
#
#      64-bit && append-flags -fPIC
# 
64-bit() {
	case "${ARCH}" in 
		alpha|*64) return 0 ;;

		#hppa is not 64 bit but needs -fPIC too
		hppa)      return 0 ;;

		*)         return 1 ;;
	esac
}
