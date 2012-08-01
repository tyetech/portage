# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdepim-icons/Attic/kdepim-icons-4.9.0.ebuild,v 1.1 2012/08/01 22:16:47 johu Exp $

EAPI=4

KMNAME="kdepim"
KMMODULE="icons"
KDE_SCM="git"
inherit kde4-meta

DESCRIPTION="KDE PIM icons"
IUSE=""
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="$(add_kdebase_dep kdepimlibs)"
RDEPEND=""
