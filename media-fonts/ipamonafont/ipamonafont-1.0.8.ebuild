# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-fonts/cvs-repo/gentoo-x86/media-fonts/ipamonafont/ipamonafont-1.0.8.ebuild,v 1.7 2009/02/07 14:41:27 armin76 Exp $

inherit font

DESCRIPTION="Hacked version of IPA fonts, which is suitable for browsing 2ch"
HOMEPAGE="http://www.geocities.jp/ipa_mona/index.html"
MY_PN="opfc-ModuleHP-1.1.1_withIPAMonaFonts"
SRC_URI="http://www.geocities.jp/ipa_mona/${MY_PN}-${PV}.tar.gz"
LICENSE="grass-ipafonts as-is"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ppc s390 sh sparc x86 ~x86-fbsd"
IUSE=""

S="${WORKDIR}"

RESTRICT="mirror"

FONT_SUFFIX="ttf"
FONT_S="${S}/${MY_PN}-${PV}/fonts"
