# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-zope/cvs-repo/gentoo-x86/net-zope/zopeedit/Attic/zopeedit-0.7.ebuild,v 1.3 2004/07/10 15:43:48 kugelfang Exp $

inherit distutils

DESCRIPTION="The ExternalEditor is a Zope product and configurable helper application that allows you to drop into your favorite editor(s) directly from the ZMI to modify Zope objects."
HOMEPAGE="http://www.zope.org/Members/Caseman/ExternalEditor/"
SRC_URI="http://www.zope.org/Members/Caseman/ExternalEditor/0.7/zopeedit-${PV}-src.tgz"
LICENSE="ZPL"
KEYWORDS="~x86 ~ppc ~amd64"
SLOT="0"
S=${WORKDIR}/${PN}-${PV}-src
