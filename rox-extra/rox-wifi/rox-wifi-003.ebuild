# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/rox-extra/cvs-repo/gentoo-x86/rox-extra/rox-wifi/rox-wifi-003.ebuild,v 1.3 2007/10/31 07:32:23 opfer Exp $

ROX_LIB_VER=2.0.0
inherit rox

MY_PN="WiFi"
DESCRIPTION="WiFi - A wireless signal monitor applet for ROX."
HOMEPAGE="http://code.google.com/p/rox-wifi/wiki/WiFi"
SRC_URI="http://rox-wifi.googlecode.com/files/${MY_PN}-${PV}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 x86"
IUSE=""

APPNAME=${MY_PN}
S=${WORKDIR}
WRAPPERNAME="skip"
