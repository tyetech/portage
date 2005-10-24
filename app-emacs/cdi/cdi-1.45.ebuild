# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/cdi/Attic/cdi-1.45.ebuild,v 1.9 2005/10/24 13:30:53 josejx Exp $

inherit elisp

IUSE=""

DESCRIPTION="Interface between Emacs and command-line CD players"
HOMEPAGE="http://www.emacswiki.org/cgi-bin/wiki.pl?action=browse&id=MattHodges&oldid=MatthewHodges"
SRC_URI="mirror://gentoo/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc x86"

RDEPEND="${DEPEND}
	media-sound/cdcd"

SITEFILE=50cdi-gentoo.el
