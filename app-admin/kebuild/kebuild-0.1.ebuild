# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# Maintainer: Bart Verwilst <verwilst@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/kebuild/Attic/kebuild-0.1.ebuild,v 1.2 2002/04/10 12:08:38 verwilst Exp $
. /usr/portage/eclass/inherit.eclass || die
inherit kde-base || die

need-kde 3
SLOT="0"
DESCRIPTION="Graphical KDE emerge tool"
SRC_URI="http://prdownloads.sourceforge.net/kemerge/${P}.tar.gz"
HOMEPAGE="http://kemerge.sourceforge.net/"
NEWDEPEND=">=app-admin/kebuildpart-0.1"
