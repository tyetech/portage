# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/tm/Attic/tm-1.35.ebuild,v 1.6 2004/08/10 02:46:53 tgall Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Emacs MIME support. Not needed for gnus >= 5.8.0"
PKG_CAT="standard"

DEPEND="app-xemacs/gnus
app-xemacs/mh-e
app-xemacs/rmail
app-xemacs/vm
app-xemacs/mailcrypt
app-xemacs/mail-lib
app-xemacs/apel
app-xemacs/xemacs-base
app-xemacs/fsf-compat
"
KEYWORDS="amd64 x86 ~ppc alpha sparc ppc64"

inherit xemacs-packages

