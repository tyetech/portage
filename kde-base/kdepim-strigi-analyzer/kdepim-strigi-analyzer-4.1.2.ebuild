# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdepim-strigi-analyzer/Attic/kdepim-strigi-analyzer-4.1.2.ebuild,v 1.1 2008/10/02 08:10:04 jmbsvicetto Exp $

EAPI="2"

KMNAME=kdepim
KMMODULE=strigi-analyzer
inherit kde4-meta

DESCRIPTION="kdepim: strigi plugins"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND=">=app-misc/strigi-0.5.9"
RDEPEND="${DEPEND}"
