# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ksystemlog/Attic/ksystemlog-4.4.5.ebuild,v 1.5 2010/08/09 17:34:30 scarabeus Exp $

EAPI="3"

KMNAME="kdeadmin"

inherit kde4-meta

DESCRIPTION="KDE system log viewer"
KEYWORDS="amd64 ppc ~ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug +handbook"

# Tests hang, last checked in 4.3.3
RESTRICT="test"
