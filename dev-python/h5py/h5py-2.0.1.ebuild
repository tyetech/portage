# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-python/cvs-repo/gentoo-x86/dev-python/h5py/h5py-2.0.1.ebuild,v 1.3 2012/02/23 05:34:40 patrick Exp $

EAPI="3"
PYTHON_DEPEND="*"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.5 *-jython 2.7-pypy-*"
DISTUTILS_SRC_TEST="setup.py"

inherit distutils

DESCRIPTION="A simple Python interface to HDF5 files."
HOMEPAGE="http://h5py.alfven.org/ http://code.google.com/p/h5py/ http://pypi.python.org/pypi/h5py"
SRC_URI="http://${PN}.googlecode.com/files/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE="test"

RDEPEND="sci-libs/hdf5
	dev-python/numpy"
DEPEND="${RDEPEND}
	dev-python/setuptools
	test? ( dev-python/unittest2 )"

PYTHON_CFLAGS=("2.* + -fno-strict-aliasing")

DISTUTILS_USE_SEPARATE_SOURCE_DIRECTORIES="1"
