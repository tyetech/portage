# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/riece/Attic/riece-1.22.ebuild,v 1.1 2006/11/26 08:54:07 graaff Exp $

SLOT="0"
IUSE=""
DESCRIPTION="IRC client for Emacs."
PKG_CAT="standard"

RDEPEND="!app-xemacs/xemacs-packages-sumo
"
KEYWORDS="~alpha ~amd64 ~ppc ~sparc ~x86"

inherit xemacs-packages

