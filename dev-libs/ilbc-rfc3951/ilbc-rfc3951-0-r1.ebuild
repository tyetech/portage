# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/ilbc-rfc3951/ilbc-rfc3951-0-r1.ebuild,v 1.13 2012/06/17 16:23:45 armin76 Exp $

inherit eutils autotools

DESCRIPTION="iLBC (internet Low Bitrate Codec) is a speech codec suitable for robust voice communication over IP."
HOMEPAGE="http://www.ilbcfreeware.org/"
SRC_URI="http://simon.morlat.free.fr/download/1.1.x/source/ilbc-rfc3951.tar.gz"

# relicensed under 3-clause BSD license, bug 390797
LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 ~hppa ia64 ppc ppc64 sparc x86"
IUSE=""

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${PN}-asneeded.patch
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die
}
