# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/fakeroot-ng/Attic/fakeroot-ng-0.15.ebuild,v 1.1 2009/05/27 16:24:36 spock Exp $

DESCRIPTION="A utility to run commands with fake root privileges"
HOMEPAGE="http://sourceforge.net/projects/fakerootng/"
SRC_URI="mirror://sourceforge/${PN//-/}/${PF}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND=""
DEPEND=""

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc README NEWS AUTHORS
}
