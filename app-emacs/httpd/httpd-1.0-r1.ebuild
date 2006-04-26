# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/httpd/Attic/httpd-1.0-r1.ebuild,v 1.1 2006/04/26 17:58:40 mkennedy Exp $

inherit elisp eutils

DESCRIPTION="A HTTP server embedded in the Emacs"
HOMEPAGE="http://www.chez.com/emarsden/downloads/"
SRC_URI="mirror://gentoo/${P}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

SITEFILE=50httpd-gentoo.el

src_unpack() {
	unpack ${A}
	epatch ${FILESDIR}/${PV}-open-network-strea-server-gentoo.patch
}
