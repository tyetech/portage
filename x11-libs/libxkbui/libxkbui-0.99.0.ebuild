# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libxkbui/Attic/libxkbui-0.99.0.ebuild,v 1.5 2005/10/16 06:16:39 cardoe Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org xkbui library"
#HOMEPAGE="http://foo.bar.com/"
#SRC_URI="ftp://foo.bar.com/${P}.tar.bz2"
#LICENSE=""
#SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~s390 ~sparc ~x86"
#IUSE="X gnome"
RDEPEND="x11-libs/libXt
	x11-libs/libxkbfile"
DEPEND="${RDEPEND}"
