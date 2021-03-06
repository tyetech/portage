# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/bempc/bempc-0.11.ebuild,v 1.1 2012/07/12 11:29:15 yngwin Exp $

EAPI=4
LANGS="cs de"
inherit qt4-r2 fdo-mime

DESCRIPTION="Qt4 MPD client with experimental UI"
HOMEPAGE="http://qt-apps.org/content/show.php?content=137091"
SRC_URI="http://qt-apps.org/CONTENT/content-files/137091-${P}.txz -> ${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="media-libs/libmpdclient
	>=x11-libs/qt-core-4.6:4
	>=x11-libs/qt-gui-4.6:4"
RDEPEND="${DEPEND}"

src_prepare() {
	local INSTALLED_LANGS= LANG=

	# Install on live fs should be done by portage itself
	sed -ie 's/postinstall/#postinstall/g' be.mpc.pro

	# Install only chosen locales
	for LANG in ${LINGUAS}; do
		if has ${LANG} ${LANGS}; then
			INSTALLED_LANGS="${INSTALLED_LANGS} be.mpc_${LANG}.qm"
		fi
	done
	sed -ie "s/i18n.files += be.mpc_cs.qm be.mpc_de.qm/i18n.files += ${INSTALLED_LANGS}/" be.mpc.pro

	# Fix invalid desktop file
	sed -ie 's/Categories=Application;Qt;Audio;/Categories=Qt;AudioVideo;Audio;/' be.mpc.desktop
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	fdo-mime_mime_database_update
}
