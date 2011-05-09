# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kppp/Attic/kppp-4.6.2.ebuild,v 1.3 2011/05/09 23:06:25 hwoarang Exp $

EAPI=3

KDE_HANDBOOK="optional"
KMNAME="kdenetwork"
inherit kde4-meta

DESCRIPTION="KDE: A dialer and front-end to pppd."
KEYWORDS="amd64 ~ppc ~ppc64 x86"
IUSE="debug"

RDEPEND="
	net-dialup/ppp
"
