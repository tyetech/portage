# Copyriht 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Maintainer: Matthew Kennedy <mkennedy@gentoo.org>
# Author: phoen][x <eqc_phoenix@gmx.de>
# $Header: /usr/local/ssd/gentoo-x86/output/net-irc/cvs-repo/gentoo-x86/net-irc/erc/Attic/erc-2.92.ebuild,v 1.1 2002/05/01 17:36:26 mkennedy Exp $

LICENSE="GPL-2"

S=${WORKDIR}/erc
DESCRIPTION="ERC - The Emacs IRC Client"
SRC_URI="http://prdownloads.sourceforge.net/erc/${P}.tar.gz"
HOMEPAGE="http://emacswiki.org/cgi-bin/wiki.pl?EmacsIRCClient"

DEPEND=""
RDEPEND=">=app-editors/emacs-21.2"

src_install() {	
	dodoc CREDITS HISTORY ChangeLog servers.pl
	insinto /usr/share/emacs/21.2/lisp
	doins *.el
}
