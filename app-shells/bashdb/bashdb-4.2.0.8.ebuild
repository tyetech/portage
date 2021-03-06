# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-shells/cvs-repo/gentoo-x86/app-shells/bashdb/bashdb-4.2.0.8.ebuild,v 1.1 2011/08/11 03:34:05 vapier Exp $

MY_P="${PN}-${PV:0:3}-${PV:4}"
DESCRIPTION="bash source code debugging"
HOMEPAGE="http://bashdb.sourceforge.net/"
SRC_URI="mirror://sourceforge/bashdb/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="!>=app-shells/bash-${PV:0:1}.$((${PV:2:1}+1))"

S=${WORKDIR}/${MY_P}

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc AUTHORS NEWS README THANKS TODO
}
