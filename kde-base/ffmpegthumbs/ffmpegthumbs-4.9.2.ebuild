# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ffmpegthumbs/ffmpegthumbs-4.9.2.ebuild,v 1.1 2012/10/02 18:11:42 johu Exp $

EAPI=4

inherit kde4-base

DESCRIPTION="A FFmpeg based thumbnail Generator for Video Files."
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

DEPEND="
	virtual/ffmpeg
"
RDEPEND="${DEPEND}"
