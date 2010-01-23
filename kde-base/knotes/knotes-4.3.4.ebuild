# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/knotes/Attic/knotes-4.3.4.ebuild,v 1.2 2010/01/23 20:17:55 abcd Exp $

EAPI="2"

KMNAME="kdepim"

inherit kde4-meta

DESCRIPTION="KDE Notes application"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux"
IUSE="debug +handbook"

DEPEND="$(add_kdebase_dep libkdepim)"
RDEPEND="${DEPEND}"

KMLOADLIBS="libkdepim"
