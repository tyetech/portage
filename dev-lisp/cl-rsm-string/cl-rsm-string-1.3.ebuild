# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lisp/cvs-repo/gentoo-x86/dev-lisp/cl-rsm-string/Attic/cl-rsm-string-1.3.ebuild,v 1.4 2004/08/07 05:22:07 mkennedy Exp $

inherit common-lisp eutils

DESCRIPTION="R. Scott McIntire's Common Lisp String Library"
HOMEPAGE="http://packages.debian.org/unstable/devel/cl-rsm-string.html"
SRC_URI="http://ftp.debian.org/debian/pool/main/c/cl-rsm-string/cl-rsm-string_${PV}.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86"
IUSE=""
DEPEND="dev-lisp/common-lisp-controller
	virtual/commonlisp "

CLPACKAGE=rsm-string

src_unpack() {
	unpack ${A}
	epatch ${FILESDIR}/${PV}-ftype-gentoo.patch
}

src_install() {
	common-lisp-install *.lisp *.asd
	common-lisp-system-symlink
	dodoc copying copyright
	dohtml *.html *.jpg
	do-debian-credits
}
