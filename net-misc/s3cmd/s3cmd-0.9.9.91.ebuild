# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/s3cmd/s3cmd-0.9.9.91.ebuild,v 1.4 2011/04/05 19:08:57 arfrever Exp $

EAPI="3"
PYTHON_DEPEND="2"
PYTHON_USE_WITH="xml"

inherit distutils

KEYWORDS="amd64 x86"
DESCRIPTION="Command line client for Amazon S3"
HOMEPAGE="http://s3tools.org/s3cmd"
SRC_URI="mirror://sourceforge/s3tools/${P}.tar.gz"
LICENSE="GPL-2"

IUSE=""
SLOT="0"

DEPEND=""
RDEPEND=""

PYTHON_MODNAME="S3"

pkg_setup() {
	python_set_active_version 2
	python_pkg_setup
}

src_install() {
	S3CMD_INSTPATH_DOC=/usr/share/doc/${PF} distutils_src_install
}
