# Copyright 2000-2002 Achim Gottinger
# Distributed under the GPL by Gentoo Technologies, Inc.
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/nessus/Attic/nessus-1.2.4.ebuild,v 1.1 2002/08/22 14:38:12 raker Exp $

S=${WORKDIR}/${PN}
DESCRIPTION="A remote security scanner for Linux"
HOMEPAGE="http://www.nessus.org/"

DEPEND="=net-analyzer/nessus-libraries-${PV}
	=net-analyzer/libnasl-${PV}
	=net-analyzer/nessus-core-${PV}
	=net-analyzer/nessus-plugins-${PV}"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ppc -sparc -sparc64"
