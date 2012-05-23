# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-officeext/cvs-repo/gentoo-x86/app-officeext/ooo2gd/ooo2gd-3.0.0.ebuild,v 1.3 2012/05/23 08:54:32 scarabeus Exp $

EAPI=4
OO_EXTENSIONS=(
	"${PN}_${PV}.oxt"
)
inherit office-ext

DESCRIPTION="Extension for export to Google docs, zoho and WebDAV"
HOMEPAGE="http://code.google.com/p/ooo2gd/"
SRC_URI="http://ooo2gd.googlecode.com/files/${PN}_${PV}.oxt"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="virtual/ooo[java]"
DEPEND="${RDEPEND}"
