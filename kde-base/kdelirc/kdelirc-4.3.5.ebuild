# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdelirc/Attic/kdelirc-4.3.5.ebuild,v 1.3 2010/03/11 18:38:39 ranger Exp $

EAPI="2"

KMNAME="kdeutils"
inherit kde4-meta

DESCRIPTION="KDE frontend for the Linux Infrared Remote Control system"
KEYWORDS="amd64 ppc x86"
IUSE="debug +handbook"

RDEPEND="
	!kde-misc/kdelirc
	app-misc/lirc
"
