# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-xemacs/cvs-repo/gentoo-x86/app-xemacs/sasl/Attic/sasl-1.12.ebuild,v 1.7 2004/04/01 01:27:00 jhuebel Exp $

SLOT="0"
IUSE=""
DESCRIPTION="Simple Authentication and Security Layer (SASL) library."
PKG_CAT="standard"

DEPEND="app-xemacs/ecrypto
"
KEYWORDS="x86 ~ppc alpha sparc amd64"

inherit xemacs-packages

