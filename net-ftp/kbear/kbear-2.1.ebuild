# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-ftp/cvs-repo/gentoo-x86/net-ftp/kbear/Attic/kbear-2.1.ebuild,v 1.6 2003/09/07 00:12:23 msterret Exp $

inherit kde-base

DESCRIPTION="A KDE 3.x FTP Manager"
SRC_URI="mirror://sourceforge/kbear/${P}-1.src.tar.bz2"
HOMEPAGE="http://kbear.sourceforge.net/"

LICENSE="GPL-2"
KEYWORDS="x86 ~ppc sparc"

need-kde 3
