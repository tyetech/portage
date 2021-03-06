# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/rgain/rgain-1.0.2.ebuild,v 1.2 2012/09/05 16:48:21 sochotnicky Exp $

EAPI=4

PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Set of programmes and Python modules to deal with Replay Gain information"
HOMEPAGE="http://bitbucket.org/fk/rgain"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-python/docutils-0.9"
RDEPEND="media-libs/mutagen
	dev-python/gst-python
	media-libs/gst-plugins-good"

src_install() {
	distutils_src_install

	doman build/man/*
}
