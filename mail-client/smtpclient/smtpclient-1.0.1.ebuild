# Copyright 1999-2006 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/mail-client/cvs-repo/gentoo-x86/mail-client/smtpclient/Attic/smtpclient-1.0.1.ebuild,v 1.2 2006/03/19 06:21:54 halcy0n Exp $

inherit eutils

IUSE="fullheaders"

DESCRIPTION="Minimal SMTP client"
HOMEPAGE="http://www.engelschall.com/sw/smtpclient/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"

DEPEND=""

src_install () {
	dobin smtpclient
	doman smtpclient.1
}
