# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Jerry Alexandratos <jerry@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-mail/cvs-repo/gentoo-x86/net-mail/mailbase/Attic/mailbase-0.00-r1.ebuild,v 1.1 2001/04/18 23:50:38 achim Exp $

A=""
S=${WORKDIR}
DESCRIPTION="MTA layout package"
SRC_URI=""
HOMEPAGE="http://www.gentoo.org/"

src_install() {
    dodir /etc/mail
    insinto /etc/mail
    doins ${FILESDIR}/aliases
}
