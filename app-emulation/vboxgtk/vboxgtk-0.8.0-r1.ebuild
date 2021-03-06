# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emulation/cvs-repo/gentoo-x86/app-emulation/vboxgtk/vboxgtk-0.8.0-r1.ebuild,v 1.1 2012/09/26 13:01:11 hasufell Exp $

EAPI="4"

PYTHON_COMPAT="python2_6 python2_7"

inherit gnome2-utils python-distutils-ng

DESCRIPTION="GTK frontend for VirtualBox"
HOMEPAGE="http://code.google.com/p/vboxgtk/"
SRC_URI="http://vboxgtk.googlecode.com/files/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	|| ( app-emulation/virtualbox[-headless,python,sdk]
		>=app-emulation/virtualbox-bin-2.2.2[python] )
	>=dev-python/pygobject-2.28.0:2"

DOCS=( AUTHORS README )

PKG_LINGUAS="cs gl"
for PKG_LINGUA in ${PKG_LINGUAS}; do
	IUSE="${IUSE} linguas_${PKG_LINGUA/-/_}"
done

python_prepare_all() {
	for LINGUA in ${PKG_LINGUAS}; do
		if ! use linguas_${LINGUA/-/_}; then
			rm -r po/"${LINGUA}".po || die "LINGUAS removal failed"
		fi
	done
}

python_install_all() {
	dodoc ${DOCS[@]}
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	gnome2_icon_cache_update
}

pkg_postrm() {
	gnome2_icon_cache_update
}
