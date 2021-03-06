# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/ext4magic/ext4magic-0.3.1.ebuild,v 1.1 2012/09/24 11:23:26 ssuominen Exp $

EAPI=4

DESCRIPTION="Linux admin tool, can help to recover deleted or overwritten files on ext3 and ext4 filesystems"
HOMEPAGE="http://developer.berlios.de/projects/ext4magic/"
SRC_URI="mirror://berlios/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-arch/bzip2
	>=sys-apps/file-5.04
	sys-apps/util-linux
	>=sys-fs/e2fsprogs-1.41.9
	sys-libs/zlib"
DEPEND=${RDEPEND}

DOCS="AUTHORS ChangeLog NEWS README TODO"
