# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/mythphone/Attic/mythphone-0.21_p17105.ebuild,v 1.3 2008/12/21 17:08:57 nixnut Exp $

inherit mythtv-plugins subversion

DESCRIPTION="Phone and video calls with SIP."
IUSE="festival"
KEYWORDS="amd64 ppc ~x86"

RDEPEND="festival? ( app-accessibility/festival )"
DEPEND="${RDEPEND}"

MTVCONF=$(use_enable festival)
