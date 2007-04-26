# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/softsqueeze/Attic/softsqueeze-2.0.ebuild,v 1.3 2007/04/26 23:59:52 beandog Exp $

inherit eutils

SLIMSERVER_VERSION="6.5"
DESCRIPTION="A music player that works with the SlimServer software"
HOMEPAGE="http://softsqueeze.sourceforge.net/"
SRC_URI=""
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
DEPEND=""
RDEPEND="
	>=media-sound/slimserver-${SLIMSERVER_VERSION}
	virtual/jre
	"

src_install() {
	dobin ${FILESDIR}/softsqueeze
}
