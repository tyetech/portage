# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-firewall/cvs-repo/gentoo-x86/net-firewall/guarddog/Attic/guarddog-2.0.0.ebuild,v 1.4 2003/12/29 13:41:32 mholzer Exp $

inherit kde-base

need-kde 3

DESCRIPTION="Firewall configuration utility for KDE 3"
SRC_URI="http://www.simonzone.com/software/${PN}/${P}.tar.gz"
HOMEPAGE="http://www.simonzone.com/software/guarddog/"
KEYWORDS="x86 ~sparc"
LICENSE="GPL-2"

newrdepend ">=net-firewall/iptables-1.2.5"
