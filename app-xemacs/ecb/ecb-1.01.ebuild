# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/ecb/Attic/ecb-1.01.ebuild,v 1.4 2004/04/01 00:14:34 jhuebel Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Emacs source code browser."
PKG_CAT="standard"

DEPEND="app-xemacs/xemacs-base
app-xemacs/semantic
app-xemacs/eieio
app-xemacs/fsf-compat
app-xemacs/edit-utils
app-xemacs/jde
app-xemacs/mail-lib
app-xemacs/eshell
app-xemacs/ediff
app-xemacs/xemacs-devel
app-xemacs/speedbar
"
KEYWORDS="x86 ~ppc alpha sparc amd64"

inherit xemacs-packages
