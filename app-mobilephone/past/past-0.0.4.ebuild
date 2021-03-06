# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-mobilephone/cvs-repo/gentoo-x86/app-mobilephone/past/past-0.0.4.ebuild,v 1.2 2012/07/09 19:29:40 kensington Exp $

EAPI=4
inherit cmake-utils

DESCRIPTION="A simple SMS tool"
HOMEPAGE="http://www.kde-apps.org/content/show.php/past+-+SMS+Tool?content=74036"
SRC_URI="http://www.kde-apps.org/CONTENT/content-files/74036-${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="x11-libs/qt-core:4
	x11-libs/qt-dbus:4
	x11-libs/qt-gui:4
	app-mobilephone/gnokii[sms]"
RDEPEND="${DEPEND}"

DOCS=( ChangeLog TODO )
PATCHES=( "${FILESDIR}/${P}-gcc-4.7.patch" )
