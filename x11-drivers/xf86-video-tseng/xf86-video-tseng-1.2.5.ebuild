# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-drivers/cvs-repo/gentoo-x86/x11-drivers/xf86-video-tseng/xf86-video-tseng-1.2.5.ebuild,v 1.2 2012/09/17 15:04:13 aballier Exp $

EAPI=4
inherit xorg-2

DESCRIPTION="Tseng Labs video driver"
KEYWORDS="~amd64 ~ia64 ~x86 ~amd64-fbsd ~x86-fbsd"
IUSE=""

RDEPEND=">=x11-base/xorg-server-1.0.99"
DEPEND="${RDEPEND}"
