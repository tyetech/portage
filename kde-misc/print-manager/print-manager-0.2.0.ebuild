# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-misc/cvs-repo/gentoo-x86/kde-misc/print-manager/print-manager-0.2.0.ebuild,v 1.1 2012/08/22 22:07:07 dilfridge Exp $

EAPI=4

KDE_LINGUAS="cs da de et hu km nl pl pt pt_BR sk sv uk"
inherit kde4-base

DESCRIPTION="Manage print jobs and printers in KDE"
HOMEPAGE="https://projects.kde.org/projects/playground/base/print-manager"
[[ "${PV}" != "9999" ]] && SRC_URI="mirror://kde/stable/${PN}/${PV}/src/${P}.tar.bz2"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
SLOT="4"
IUSE="debug"

RDEPEND="
	>=net-print/cups-1.6.0[dbus]
"
DEPEND="${RDEPEND}"

src_configure() {
	mycmakeargs=( -DCUPS_1_6=ON )
	kde4-base_src_configure
}
