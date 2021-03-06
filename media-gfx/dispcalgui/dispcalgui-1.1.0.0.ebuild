# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/dispcalgui/dispcalgui-1.1.0.0.ebuild,v 1.1 2012/09/23 09:55:57 hwoarang Exp $

EAPI="2"
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.4 3.* *-jython 2.7-pypy-*"

inherit distutils fdo-mime

MY_PN="dispcalGUI"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Display Calibration and Characterization powered by Argyll CMS"
HOMEPAGE="http://dispcalgui.hoech.net/"
SRC_URI="http://dev.gentoo.org/~hwoarang/distfiles/${MY_P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=media-gfx/argyllcms-1.1.0
	>=dev-python/wxpython-2.8.10.1
	>=x11-libs/libX11-1.3.3
	>=x11-apps/xrandr-1.3.2
	>=x11-libs/libXxf86vm-1.1.0
	>=x11-proto/xineramaproto-1.2
	>=x11-libs/libXinerama-1.1"
RDEPEND="${DEPEND}
	>=dev-python/numpy-1.2.1"

# Just in case someone renames the ebuild
S=${WORKDIR}/${MY_P}

DOCS=(
	README.html
)

src_prepare() {
#	Prohibit setup from running xdg-* programs, resulting to sandbox violation
	cd "${S}/dispcalGUI" || die "Cannot cd to source directory."
	sed -e 's/if which(\"xdg-icon-resource\"):/if which(\"xdg-icon-resource-non-existant\"):/' \
	-e 's/if which(\"xdg-desktop-menu\"):/if which(\"xdg-desktop-menu-non-existant\"):/' \
	-i postinstall.py || die "sed'ing out the xdg-* setup functions failed"

#	Set udev rules to install at /lib/udev/rules.d
	cd "${S}" || die "Cannot cd to work directory."
	for offendingFile in $(grep -r -l "/etc/udev/rules.d" .); do
		sed -e 's|/etc/udev/rules\.d|/lib/udev/rules\.d|g' -i "${offendingFile}" || \
		die "setting udev rules' destination directory failed"
	done

#	Remove deprecated Encoding key from .desktop file
	cd "${S}" || die "Cannot cd to work directory."
	for offendingFile in $(grep -r -l "Encoding=UTF-8" .); do
		sed -e '/Encoding=UTF-8/d' -i "${offendingFile}" || \
		die "removing deprecated Encoding key from .desktop files failed"
	done

	distutils_src_prepare
}

pkg_postinst() {
#	Run xdg-* programs the Gentoo way since we removed this functionality from the original package
	fdo-mime_mime_database_update
	fdo-mime_desktop_database_update
	distutils_pkg_postinst
}

pkg_postrm() {
#	Run xdg-* programs the Gentoo way since we removed this functionality from the original package
	fdo-mime_mime_database_update
	fdo-mime_desktop_database_update
	distutils_pkg_postrm
}
