# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-nordlichtsepg/Attic/vdr-nordlichtsepg-0.8.ebuild,v 1.1 2006/03/18 08:45:48 zzam Exp $

inherit vdr-plugin

IUSE=""
SLOT="0"

DESCRIPTION="vdr Plugin: Better EPG view than default vdr"
HOMEPAGE="http://martins-kabuff.de/nordlichtsepg.html"
SRC_URI="http://martins-kabuff.de/download/${P}.tgz"
LICENSE="GPL-2"

KEYWORDS="~x86 ~amd64"

DEPEND=">=media-video/vdr-1.3.31"
