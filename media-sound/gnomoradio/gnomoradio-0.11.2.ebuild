# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/gnomoradio/Attic/gnomoradio-0.11.2.ebuild,v 1.5 2004/07/01 07:52:08 eradicator Exp $

DESCRIPTION="Finds, fetches, shares, and plays freely licensed music."
HOMEPAGE="http://gnomoradio.org/"
SRC_URI="http://gnomoradio.org/pub/devel/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE="oggvorbis"

DEPEND="virtual/libc
	=dev-cpp/gtkmm-2.2.11
	=dev-cpp/gconfmm-2.0.2
	>=dev-cpp/libxmlpp-1.0
	media-sound/esound
	oggvorbis? ( media-libs/libvorbis )"

src_install() {
	einstall || die "einstall failed"
}
