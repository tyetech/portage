# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-kernel/cvs-repo/gentoo-x86/sys-kernel/rsbac-sources/rsbac-sources-3.4.1.ebuild,v 1.1 2012/06/09 12:13:30 blueness Exp $

EAPI="4"

ETYPE="sources"
K_WANT_GENPATCHES="base extras"
K_GENPATCHES_VER="1"

inherit kernel-2
detect_version

HGPV="${KV_MAJOR}.${KV_MINOR}.${KV_PATCH}-1"
HGPV_URI="http://dev.gentoo.org/~blueness/hardened-sources/hardened-patches/rsbac-patches-${HGPV}.extras.tar.bz2"
SRC_URI="${KERNEL_URI} ${HGPV_URI} ${GENPATCHES_URI} ${ARCH_URI}"

UNIPATCH_LIST="${DISTDIR}/rsbac-patches-${HGPV}.extras.tar.bz2"
UNIPATCH_EXCLUDE="4200_fbcondecor-0.9.6.patch 4520_pax-linux-3.4-test7.patch"

DESCRIPTION="Hardened + RSBAC kernel sources (kernel series ${KV_MAJOR}.${KV_MINOR})"
HOMEPAGE="http://www.gentoo.org/proj/en/hardened/"
IUSE=""

KEYWORDS="~amd64 ~x86"

pkg_postinst() {
	kernel-2_pkg_postinst

	ewarn
	ewarn "Note: the pax patches have not been applied however they are included"
	ewarn "in the patchset.  If you want to try to apply them, edit UNIPATCH_EXCLUDE"
	ewarn "in this ebuild.  Expect breakage ;)"
	ewarn
}
