# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/apel/Attic/apel-1.26.ebuild,v 1.2 2003/10/03 02:16:19 agriffis Exp $

SLOT="0"
IUSE=""
DESCRIPTION="A Portable Emacs Library.  Used by XEmacs MIME support."
PKG_CAT="standard"

DEPEND="app-xemacs/fsf-compat
app-xemacs/xemacs-base
"
KEYWORDS="x86 ~ppc alpha sparc"

inherit xemacs-packages

