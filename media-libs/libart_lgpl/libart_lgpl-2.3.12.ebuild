# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libart_lgpl/Attic/libart_lgpl-2.3.12.ebuild,v 1.4 2003/07/18 21:55:44 tester Exp $

inherit gnome2

S=${WORKDIR}/${P}
DESCRIPTION="a LGPL version of libart"
HOMEPAGE="http://www.levien.com/libart"

SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="x86 ~ppc ~sparc alpha hppa amd64"

DEPEND="dev-util/pkgconfig"

DOCS="AUTHORS COPYING ChangeLog INSTALL NEWS README"

SCROLLKEEPER_UPDATE="0"
