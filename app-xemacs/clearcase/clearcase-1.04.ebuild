# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/clearcase/Attic/clearcase-1.04.ebuild,v 1.6 2004/03/13 00:15:35 mr_bones_ Exp $

SLOT="0"
IUSE=""
DESCRIPTION="New Clearcase Version Control for XEmacs (UNIX, Windows)."
PKG_CAT="standard"

DEPEND="app-xemacs/dired
app-xemacs/fsf-compat
app-xemacs/mail-lib
app-xemacs/xemacs-base
"
KEYWORDS="x86 ~ppc alpha sparc"

inherit xemacs-packages
