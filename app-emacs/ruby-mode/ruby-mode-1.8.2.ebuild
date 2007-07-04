# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/ruby-mode/Attic/ruby-mode-1.8.2.ebuild,v 1.6 2007/07/04 06:04:58 ulm Exp $

inherit elisp

DESCRIPTION="Emacs major mode for editing Ruby code"
HOMEPAGE="http://www.ruby-lang.org/"
SRC_URI="mirror://ruby/ruby-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 alpha ppc amd64"
IUSE=""

SITEFILE=50${PN}-gentoo.el

S="${WORKDIR}/ruby-${PV}/misc"

src_compile() {
	elisp-comp *.el || die
}
