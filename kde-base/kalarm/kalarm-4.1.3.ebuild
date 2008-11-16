# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kalarm/Attic/kalarm-4.1.3.ebuild,v 1.2 2008/11/16 04:44:23 vapier Exp $

EAPI="2"

KMNAME=kdepim
inherit kde4-meta

DESCRIPTION="Personal alarm message, command and email scheduler for KDE"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""
DEPEND=">=kde-base/libkdepim-${PV}:${SLOT}"

RDEPEND="${DEPEND}"

KMEXTRACTONLY="kmail
	libkdepim"
