# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/guarddog/Attic/guarddog-2.0.0.ebuild,v 1.3 2002/12/09 04:33:16 manson Exp $

inherit kde-base || die

need-kde 3

DESCRIPTION="Firewall configuration utility for KDE 3"
SRC_URI="http://www.simonzone.com/software/guarddog/${P}.tar.gz"
HOMEPAGE="http://www.simonzone.com/software/guarddog/"
KEYWORDS="~x86 ~sparc "
LICENSE="GPL-2"

newdepend ">=sys-apps/iptables-1.2.5"
