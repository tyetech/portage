# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kappfinder/Attic/kappfinder-4.2.1.ebuild,v 1.3 2009/03/08 22:45:05 scarabeus Exp $

EAPI="2"

KMNAME="kdebase"
KMMODULE="apps/${PN}"
inherit kde4-meta

DESCRIPTION="KDE tool that looks for well-known apps in your path and creates entries for them in the KDE menu"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug"

KMEXTRA="
	doc/${PN}
"
