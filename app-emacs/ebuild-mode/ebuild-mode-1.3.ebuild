# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/ebuild-mode/Attic/ebuild-mode-1.3.ebuild,v 1.1 2007/02/15 08:09:16 opfer Exp $

inherit elisp

DESCRIPTION="An Emacs mode for editing Portage .ebuild, .eclass and .eselect files."
HOMEPAGE="http://bugs.gentoo.org/"
SRC_URI="mirror://gentoo/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~sparc-fbsd ~x86 ~x86-fbsd"
IUSE=""

SITEFILE=50ebuild-mode-gentoo.el
