# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-embedded/cvs-repo/gentoo-x86/dev-embedded/dc-tool-ip/Attic/dc-tool-ip-1.0.3.ebuild,v 1.2 2004/06/25 03:07:42 agriffis Exp $

DESCRIPTION="ethernet program loader for the Dreamcast"
HOMEPAGE="http://adk.napalm-x.com/dc/dcload-ip/"
SRC_URI="http://adk.napalm-x.com/dc/dcload-ip/${P}-linux.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="-* x86"
IUSE=""

DEPEND="virtual/glibc"

S=${WORKDIR}

src_install() {
	into /opt
	newbin ${P}-linux ${PN} || die
}
