# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/leechcraft-laure/leechcraft-laure-0.5.85.ebuild,v 1.1 2012/10/08 15:51:55 pinkbyte Exp $

EAPI="4"

inherit leechcraft

DESCRIPTION="VLC-based audio/video player for LeechCraft"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="~net-misc/leechcraft-core-${PV}
	sys-apps/file
	>=media-video/vlc-2.0.0"
RDEPEND="${DEPEND}"
