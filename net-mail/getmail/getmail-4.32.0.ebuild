# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/getmail/getmail-4.32.0.ebuild,v 1.2 2012/09/30 17:55:08 armin76 Exp $

EAPI="4"

PYTHON_COMPAT="python2_5 python2_6 python2_7"

inherit python-distutils-ng

DESCRIPTION="A POP3 mail retriever with reliable Maildir and mbox delivery"
HOMEPAGE="http://pyropus.ca/software/getmail/"
SRC_URI="http://pyropus.ca/software/getmail/old-versions/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="4"
KEYWORDS="~amd64 ~ppc ~x86 ~ppc-macos ~x86-macos ~x64-solaris"
IUSE=""

python_prepare_all() {
	sed -i -e "s,'getmail-%s' % __version__,'${PF}'," \
		-e "/docs\/COPYING/d" "${S}"/setup.py || die
}
