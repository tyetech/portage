# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-kernel/cvs-repo/gentoo-x86/sys-kernel/vserver-sources/Attic/vserver-sources-1.9.3.17.ebuild,v 1.2 2005/01/14 12:48:42 johnm Exp $

ETYPE="sources"
OKV="2.6.10"
K_NOSETEXTRAVERSION=1

inherit kernel-2
detect_version

DESCRIPTION="vserver patched sources for the ${KV_MAJOR}.${KV_MINOR} kernel branch"
HOMEPAGE="http://www.linux-vserver.org"
SRC_URI="${KERNEL_URI} http://vserver.13thfloor.at/Experimental/patch-${OKV}-vs${PV}.diff"

KEYWORDS="-*"

UNIPATCH_LIST="${DISTDIR}/patch-${OKV}-vs${PV}.diff"
