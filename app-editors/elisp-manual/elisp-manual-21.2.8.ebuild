# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-editors/cvs-repo/gentoo-x86/app-editors/elisp-manual/Attic/elisp-manual-21.2.8.ebuild,v 1.5 2004/03/13 23:00:56 mr_bones_ Exp $

MY_PV=21-2.8
DESCRIPTION="The GNU Emacs Lisp Reference Manual"
HOMEPAGE="http://www.gnu.org/manual/elisp-manual-${MY_PV}/elisp.html"
SRC_URI="http://www.gnu.org/manual/elisp-manual-${MY_PV}/info/elisp-info.tar.gz"

LICENSE="FDL-1.1"
SLOT="0"
KEYWORDS="x86 ppc sparc "

DEPEND=""
RDEPEND=""

S=${WORKDIR}

src_install() {
	doinfo elisp.info*
}
