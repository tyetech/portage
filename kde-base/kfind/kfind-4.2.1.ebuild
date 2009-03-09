# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kfind/Attic/kfind-4.2.1.ebuild,v 1.4 2009/03/09 11:48:14 scarabeus Exp $
EAPI="2"

KMNAME="kdebase"
KMMODULE="apps/${PN}"
inherit kde4-meta

DESCRIPTION="KDE file finder utility"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug"

KMEXTRA="
	apps/doc/${PN}/
"
