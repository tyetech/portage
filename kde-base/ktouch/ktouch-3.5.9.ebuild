# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ktouch/Attic/ktouch-3.5.9.ebuild,v 1.1 2008/02/20 23:24:48 philantrop Exp $
KMNAME=kdeedu
EAPI="1"
inherit kde-meta

DESCRIPTION="KDE: A program that helps you to learn and practice touch typing"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""

DEPEND=">=kde-base/libkdeedu-${PV}:${SLOT}"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="libkdeedu/kdeeduplot"
KMCOPYLIB="libkdeeduplot libkdeedu/kdeeduplot"

src_unpack() {
	kde-meta_src_unpack

	sed -i -e 's:Miscellaneous:X-Miscellaneous:' \
		"${S}/${PN}/${PN}.desktop" || sed "Sed to fix .desktop files failed."
}
