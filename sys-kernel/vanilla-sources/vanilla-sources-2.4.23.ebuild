# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-kernel/cvs-repo/gentoo-x86/sys-kernel/vanilla-sources/Attic/vanilla-sources-2.4.23.ebuild,v 1.6 2004/11/25 23:30:52 dsd Exp $

K_NOUSENAME="yes"
K_NOSETEXTRAVERSION="yes"
ETYPE="sources"
inherit kernel-2

DESCRIPTION="Full sources for the Linux kernel"
HOMEPAGE="http://www.kernel.org"
SRC_URI="mirror://kernel/linux/kernel/v2.4/linux-${PV}.tar.bz2"

KEYWORDS="x86 -ppc sparc alpha amd64"
IUSE=""
