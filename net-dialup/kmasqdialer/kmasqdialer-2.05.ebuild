# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-dialup/cvs-repo/gentoo-x86/net-dialup/kmasqdialer/Attic/kmasqdialer-2.05.ebuild,v 1.1 2003/05/29 02:57:07 caleb Exp $

IUSE=""

inherit kde-base

DESCRIPTION="KMasqdialer - A KDE Client for MasqDialer"
SRC_URI=" http://www.stephan.co.uk/kmasqdialer/${P}.tar.gz"
HOMEPAGE="http://www.stephan.co.uk/kmasqdialer/download.html"

LICENSE="GPL-2"
KEYWORDS="x86"

need-kde 3
