# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-lisp/cvs-repo/gentoo-x86/dev-lisp/cl-s-base64/Attic/cl-s-base64-20060521.ebuild,v 1.1 2006/05/21 06:25:16 mkennedy Exp $

inherit common-lisp

DESCRIPTION="A Common Lisp implementation of Bse64 Encoding/Decoding."
HOMEPAGE="http://homepage.mac.com/svc/s-base64/"
SRC_URI="mirror://gentoo/s-base64-${PV}.tar.gz"
LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""
DEPEND="virtual/commonlisp
	dev-lisp/common-lisp-controller"

S=${WORKDIR}/${P#cl-}

CLPACKAGE=s-base64

src_unpack() {
	unpack ${A}
	test -f ${S}/Makefile && rm ${S}/Makefile
}

src_install() {
	dodir /usr/share/common-lisp/source/${CLPACKAGE}
	dodir /usr/share/common-lisp/systems
	cp -R src test ${D}/usr/share/common-lisp/source/${CLPACKAGE}/
	common-lisp-install ${CLPACKAGE}.asd
	common-lisp-system-symlink
	dosym /usr/share/common-lisp/source/${CLPACKAGE}/${CLPACKAGE}.asd \
		/usr/share/common-lisp/systems/
	dohtml doc/*.html
	dodoc *.txt
}
