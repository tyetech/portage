# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/khotkeys/Attic/khotkeys-4.0.3.ebuild,v 1.1 2008/04/03 21:09:07 philantrop Exp $

EAPI="1"

KMNAME=kdebase-workspace
inherit kde4-meta

DESCRIPTION="KDE: hotkey daemon"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=kde-base/libkworkspace-${PV}:${SLOT}
	x11-libs/libXtst"
RDEPEND="${DEPEND}"

KMEXTRACTONLY="libs/kworkspace/"
