# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pyclutter-gst/pyclutter-gst-1.0.0-r1.ebuild,v 1.5 2012/01/14 16:40:18 maekke Exp $

EAPI="3"
PYTHON_DEPEND="2:2.6"

inherit python clutter

DESCRIPTION="Python bindings for Clutter"

KEYWORDS="amd64 x86"
IUSE="examples"

SLOT="1.0"
RDEPEND="
	>=dev-python/pygobject-2.12.1:2
	>=dev-python/pyclutter-1.0.0:${SLOT}
	>=media-libs/clutter-1.0.0:${SLOT}
	>=media-libs/clutter-gst-1.0.0:${SLOT}

	dev-python/gst-python"
DEPEND="${RDEPEND}"
EXAMPLES="examples/*.py"
DOCS="NEWS AUTHORS README ChangeLog"

pkg_setup() {
	python_set_active_version 2
}

src_prepare(){
	# Don't pre-compile .py
	ln -sf $(type -P true) py-compile
	python_convert_shebangs --recursive 2 examples
	default_src_prepare
}

pkg_postinst() {
	python_mod_optimize cluttergst
	python_need_rebuild
}

pkg_postrm() {
	python_mod_cleanup cluttergst
}
