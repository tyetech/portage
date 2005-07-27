# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/mythnews/Attic/mythnews-0.18.1.ebuild,v 1.3 2005/07/27 11:26:51 pvdabeel Exp $

inherit mythtv-plugins

DESCRIPTION="RSS feed news reading module for MythTV."
HOMEPAGE="http://www.mythtv.org/"
SRC_URI="http://www.mythtv.org/mc/mythplugins-${PV}.tar.bz2"
IUSE=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ppc ~x86"

DEPEND="~media-tv/mythtv-${PV}"
