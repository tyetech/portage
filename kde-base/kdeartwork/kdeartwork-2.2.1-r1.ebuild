# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Dan Armak <danarmak@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdeartwork/Attic/kdeartwork-2.2.1-r1.ebuild,v 1.3 2001/11/24 13:37:29 danarmak Exp $
. /usr/portage/eclass/inherit.eclass || die
inherit kde-dist || die

DESCRIPTION="${DESCRIPTION}Artwork"

src_install() {
	dodir /usr/share/apps/kthememgr/Themes
	kde_src_install all
}
