# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/smb4k/Attic/smb4k-0.4.1.ebuild,v 1.1 2004/09/02 15:18:58 mglauche Exp $

inherit kde

DESCRIPTION="Smb4K is a SMB share browser for KDE 3.2.x."
HOMEPAGE="http://smb4k.berlios.de/"
SRC_URI="http://download.berlios.de/smb4k/${P}.tar.gz"
IUSE=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

RDEPEND="$RDEPEND
	sys-libs/zlib
	net-fs/samba
	>=x11-libs/qt-3.2.3"

need-kde 3.2

