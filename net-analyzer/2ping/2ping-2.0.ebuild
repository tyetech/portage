# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/2ping/2ping-2.0.ebuild,v 1.1 2012/04/23 11:50:23 blueness Exp $

EAPI="4"

DESCRIPTION="A bi-directional ping utility"
HOMEPAGE="http://www.finnie.org/software/2ping/"
SRC_URI="http://www.finnie.org/software/2ping/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="crc ipv6 md5 sha server"

# The 2ping script itself checks if these optional deps are available.
DEPEND="
	dev-lang/perl
	perl-core/Getopt-Long
	perl-core/PodParser
	perl-core/IO
	perl-core/Time-HiRes
	ipv6? ( dev-perl/IO-Socket-INET6 )
	md5? ( perl-core/Digest-MD5 )
	sha? ( perl-core/Digest-SHA )
	crc? ( dev-perl/Digest-CRC )
"
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" PREFIX="/usr" install
	dodoc ChangeLog README
	use server && {
		doinitd "${FILESDIR}"/2pingd
		newconfd "${FILESDIR}"/2pingd.conf 2pingd
	}
}
