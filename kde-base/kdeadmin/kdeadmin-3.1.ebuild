# Copyright 1999-2001 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeadmin/Attic/kdeadmin-3.1.ebuild,v 1.5 2003/02/12 15:55:36 hannes Exp $
inherit kde-dist 

IUSE="pam"
DESCRIPTION="KDE administration tools (user manager, etc.)"
KEYWORDS="x86 ppc ~sparc"

newdepend ">=app-arch/rpm-4.0.4-r1
	dev-libs/popt
	pam? ( >=sys-libs/pam-0.72 )"

use pam		&& myconf="$myconf --with-pam"	|| myconf="$myconf --without-pam --with-shadow"
myconf="$myconf --without-rpm"

# TODO: add nis support
