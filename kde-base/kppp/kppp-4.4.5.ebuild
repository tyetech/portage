# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kppp/Attic/kppp-4.4.5.ebuild,v 1.3 2010/08/09 03:53:45 josejx Exp $

EAPI="3"

KMNAME="kdenetwork"
inherit kde4-meta

DESCRIPTION="KDE: A dialer and front-end to pppd."
KEYWORDS="~alpha amd64 ~ia64 ppc ~ppc64 ~sparc ~x86"
IUSE="debug +handbook"

RDEPEND="
	net-dialup/ppp
"
