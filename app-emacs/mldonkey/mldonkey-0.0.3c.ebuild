# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/mldonkey/Attic/mldonkey-0.0.3c.ebuild,v 1.3 2004/06/24 22:18:34 agriffis Exp $

inherit elisp

DESCRIPTION="mldonkey.el is an Emacs Lisp interface to the MLDonkey core"
HOMEPAGE="http://www.physik.fu-berlin.de/~dhansen/mldonkey/"
SRC_URI="http://www.physik.fu-berlin.de/%7Edhansen/mldonkey/files/mldonkey-el-${PV}.tar.gz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""
DEPEND="virtual/emacs"
S=${WORKDIR}/mldonkey-el-${PV}

SITEFILE=50mldonkey-gentoo.el

src_compile() {
	elisp-comp ml*.el
}
