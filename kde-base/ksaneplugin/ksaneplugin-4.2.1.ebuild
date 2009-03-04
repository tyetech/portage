# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ksaneplugin/Attic/ksaneplugin-4.2.1.ebuild,v 1.1 2009/03/04 22:14:27 alexxy Exp $

EAPI="2"

KMNAME="kdegraphics"

inherit kde4-meta

DESCRIPTION="SANE Plugin for KDE"
HOMEPAGE="http://www.kipi-plugins.org"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

DEPEND="kde-base/libksane:${SLOT}"
