# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/sgi-fonts/sgi-fonts-1.0.ebuild,v 1.12 2011/01/05 15:04:42 xmw Exp $

inherit rpm font

RPM_P="${P}-705.noarch"

DESCRIPTION="SGI fonts collection"
HOMEPAGE="http://www.suse.com/us/private/products/suse_linux/prof/packages_professional/sgi-fonts.html"
SRC_URI="ftp://ftp.suse.com/pub/suse/i386/9.1/suse/noarch/${RPM_P}.rpm"

LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 arm ia64 ~ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE=""

S="${WORKDIR}/usr/X11R6/lib/X11/fonts/misc/sgi"
FONT_S=${S}

FONT_SUFFIX="pcf.gz"
