# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/dired/Attic/dired-1.12.ebuild,v 1.7 2005/01/01 17:00:16 eradicator Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Manage file systems."
PKG_CAT="standard"

DEPEND="app-xemacs/xemacs-base
app-xemacs/prog-modes
"
KEYWORDS="x86 ~ppc ~alpha sparc"

inherit xemacs-packages
