# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-doc/cvs-repo/gentoo-x86/app-doc/root-docs/Attic/root-docs-3.03.04.ebuild,v 1.3 2002/08/01 14:02:44 seemant Exp $

S=${WORKDIR}/htmldoc
DESCRIPTION="An Object-Oriented Data Analysis Framework"
SRC_URI="ftp://root.cern.ch/root/html303.tar.gz"
HOMEPAGE="http://root.cern.ch/"

SLOT="0"
LICENSE="as-is"
KEYWORDS="x86"

src_compile() {

	einfo "Nothing to compile."

}

src_install() {
    dohtml *
	docinto postscript
	dodoc *.ps
}
