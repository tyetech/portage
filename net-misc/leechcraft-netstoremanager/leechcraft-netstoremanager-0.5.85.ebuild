# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/leechcraft-netstoremanager/leechcraft-netstoremanager-0.5.85.ebuild,v 1.1 2012/10/08 15:58:59 pinkbyte Exp $

EAPI=4

inherit leechcraft

DESCRIPTION="LeechCraft plugin for supporting and managing Internet data storages like Yandex.Disk"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+googledrive +yandexdisk"

DEPEND="~net-misc/leechcraft-core-${PV}
	googledrive? (
		dev-libs/qjson
		sys-apps/file
	)"
RDEPEND="${DEPEND}"

src_configure(){
	local mycmakeargs=(
		$(cmake-utils_use_enable googledrive NETSTOREMANAGER_GOOGLEDRIVE)
		$(cmake-utils_use_enable yandexdisk NETSTOREMANAGER_YANDEXDISK)
	)

	cmake-utils_src_configure
}
