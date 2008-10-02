# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdesdk-strigi-analyzer/Attic/kdesdk-strigi-analyzer-4.1.2.ebuild,v 1.1 2008/10/02 08:18:17 jmbsvicetto Exp $

EAPI="2"

KMNAME=kdesdk
KMMODULE=strigi-analyzer
inherit kde4-meta

DESCRIPTION="kdesdk: strigi plugins"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=app-misc/strigi-0.5.9"
RDEPEND="${DEPEND}"
