# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-cluster/cvs-repo/gentoo-x86/sys-cluster/lspbs/lspbs-1.1-r1.ebuild,v 1.2 2010/12/30 15:09:25 jsbronder Exp $

DESCRIPTION="Displays clear, concise and up-to-date PBS node and CPU usage information."
SRC_URI="http://homepages.inf.ed.ac.uk/s0239160/misc/lspbs/${P}.tar.gz"
HOMEPAGE="http://homepages.inf.ed.ac.uk/s0239160/misc/lspbs/lspbs.html"
IUSE=""

DEPEND="sys-cluster/torque"
RDEPEND="${DEPEND}"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64 ~ppc"

src_install() {
	emake DESTDIR="${D}" install || die "install failed"

	dodoc README || die "dodoc failed"

	doman "${D}"/usr/share/lspbs.1 || die "doman failed"
	rm -f "${D}"/usr/share/lspbs.1 || die "failed to remove old man page"
}
