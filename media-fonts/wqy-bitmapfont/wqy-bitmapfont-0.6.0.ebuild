# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/wqy-bitmapfont/Attic/wqy-bitmapfont-0.6.0.ebuild,v 1.3 2006/07/12 12:50:52 agriffis Exp $

inherit font

DESCRIPTION="WenQuanYi Bitmap Song CJK font"
HOMEPAGE="http://wqy.sourceforget.net/en/"
SRC_URI="mirror://sourceforge/wqy/${PN}-pcf-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~hppa ia64 ~ppc ~x86"
IUSE=""
DEPEND=""
S="${WORKDIR}/${PN}"
FONT_S="${S}"

FONT_SUFFIX="pcf"
DOCS="INSTALL* LATEST-IS* STAT README LOGO.PNG CREDIT ChangeLog"
