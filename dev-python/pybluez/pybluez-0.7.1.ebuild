# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/pybluez/Attic/pybluez-0.7.1.ebuild,v 1.3 2006/12/30 01:21:42 dev-zero Exp $

inherit distutils python

DESCRIPTION="Python bindings for Bluez Bluetooth Stack"
HOMEPAGE="http://org.csail.mit.edu/pybluez/"
SRC_URI="http://org.csail.mit.edu/pybluez/release/${PN}-src-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~x86"
IUSE="doc"

DEPEND=">=net-wireless/bluez-libs-2.10"
RDEPEND="${DEPEND}"

PYTHON_MODNAME="pybluez"

src_install() {
	distutils_src_install

	if use doc; then
		[ -x doc/gendoc ] && doc/gendoc && [ -r doc/bluetooth.html ] && dohtml doc/bluetooth.html
		insinto /usr/share/doc/${PF}/examples
		doins -r examples/*
	fi

	python_version
	python_mod_compile ${D}/usr/$(get_libdir)/python${PYVER}/site-packages/bluetooth.py
}
