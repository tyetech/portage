# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-gnustep/cvs-repo/gentoo-x86/app-gnustep/easydiff/Attic/easydiff-0.1.ebuild,v 1.5 2004/06/24 21:40:10 agriffis Exp $

inherit gnustep

need-gnustep-gui

DESCRIPTION="GNUstep app that lets you easily see the differences between two text files."
HOMEPAGE="http://www.collaboration-world.com/easydiff/"
LICENSE="GPL-2"
SRC_URI="http://freshmeat.net/redir/easydiff/33520/url_tgz/EasyDiff-${PV}.tar.gz"
KEYWORDS="x86 ~ppc"
SLOT="0"
S=${WORKDIR}/EasyDiff
IUSE=""
