# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-kernel/cvs-repo/gentoo-x86/sys-kernel/vserver-sources/vserver-sources-2.3.3.4.ebuild,v 1.1 2012/05/31 09:57:19 patrick Exp $

ETYPE="sources"
CKV="3.4"

K_USEPV=1
K_NOSETEXTRAVERSION=1

inherit kernel-2
detect_version

KEYWORDS="~amd64 ~hppa ~x86"
IUSE=""

DESCRIPTION="Full sources including Linux-VServer patchsets for the ${KV_MAJOR}.${KV_MINOR} kernel tree."
HOMEPAGE="http://www.gentoo.org/proj/en/vps/"
SRC_URI="${KERNEL_URI} ${ARCH_URI}
	http://vserver.13thfloor.at/Experimental/patch-${CKV}-vs${PV}.diff"

UNIPATCH_LIST="${DISTDIR}/patch-${CKV}-vs${PV}.diff"
UNIPATCH_STRICTORDER=1
