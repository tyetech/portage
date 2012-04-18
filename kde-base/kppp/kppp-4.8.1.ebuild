# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kppp/Attic/kppp-4.8.1.ebuild,v 1.3 2012/04/18 20:41:09 maekke Exp $

EAPI=4

KDE_HANDBOOK="optional"
KMNAME="kdenetwork"
inherit kde4-meta

DESCRIPTION="KDE: A dialer and front-end to pppd."
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

RDEPEND="
	net-dialup/ppp
"
