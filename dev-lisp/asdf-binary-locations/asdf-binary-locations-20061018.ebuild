# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lisp/cvs-repo/gentoo-x86/dev-lisp/asdf-binary-locations/asdf-binary-locations-20061018.ebuild,v 1.2 2012/10/01 17:36:41 grobian Exp $

EAPI="3"
inherit common-lisp

DESCRIPTION="An ASDF-Extension to specify where your Common Lisp binaries (FASL files) should go."
HOMEPAGE="http://common-lisp.net/project/cl-containers/asdf-binary-locations/"
SRC_URI="http://common-lisp.net/project/portage-overlay/distfiles/${PN}_${PV}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE=""

DEPEND="dev-lisp/asdf"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}"
CLPACKAGE=${PN}

src_install() {
	insinto $CLSOURCEROOT/$CLPACKAGE/dev
	doins dev/*.lisp
	common-lisp-install *.asd
	common-lisp-system-symlink
}
