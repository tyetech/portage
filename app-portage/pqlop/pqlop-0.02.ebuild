# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-portage/cvs-repo/gentoo-x86/app-portage/pqlop/pqlop-0.02.ebuild,v 1.1 2011/12/11 20:07:59 maksbotan Exp $

EAPI=3

PYTHON_DEPEND="*:2.5"
SUPPORT_PYTHON_ABIS="1"

inherit python

DESCRIPTION="emerge.log parser written in python"
HOMEPAGE="https://bitbucket.org/LK4D4/pqlop"
SRC_URI="https://bitbucket.org/LK4D4/pqlop/raw/${PV}/pqlop.py -> ${P}.py"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-python/argparse"

src_unpack() {
	:
}

src_install() {
	installation() {
		newbin "${DISTDIR}/${P}.py" ${PN}-${PYTHON_ABI} || die "newbin failed"
		python_convert_shebangs ${PYTHON_ABI} "${ED}"usr/bin/${PN}-${PYTHON_ABI}
	}
	python_execute_function installation
	python_generate_wrapper_scripts "${ED}"usr/bin/${PN}
}
