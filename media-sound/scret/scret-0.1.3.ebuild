# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/scret/Attic/scret-0.1.3.ebuild,v 1.6 2005/03/17 18:36:47 greg_g Exp $

inherit kde

S=${WORKDIR}/ScoreReadingTrainer-${PV}

DESCRIPTION="A musical score reading trainer"
HOMEPAGE="http://scret.sourceforge.net"
SRC_URI="mirror://sourceforge/scret/ScoreReadingTrainer-${PV}.tar.bz2"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86 ~ppc ~amd64"
IUSE=""

need-kde 3.1


