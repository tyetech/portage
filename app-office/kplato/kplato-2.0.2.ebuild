# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-office/cvs-repo/gentoo-x86/app-office/kplato/Attic/kplato-2.0.2.ebuild,v 1.1 2009/08/12 10:04:18 scarabeus Exp $

EAPI="2"

KMNAME="koffice"
KMMODULE="${PN}"
inherit kde4-meta

DESCRIPTION="KPlato is a project management application."

KEYWORDS="~amd64 ~x86"
IUSE=""

KMEXTRACTONLY="libs/"
KMEXTRA="kdgantt/"

KMLOADLIBS="koffice-libs"
