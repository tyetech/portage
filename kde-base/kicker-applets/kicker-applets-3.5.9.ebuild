# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kicker-applets/Attic/kicker-applets-3.5.9.ebuild,v 1.4 2008/05/12 16:57:01 armin76 Exp $
KMNAME=kdeaddons
KMNOMODULE=true
KMEXTRA="kicker-applets doc/kicker-applets"
EAPI="1"
inherit kde-meta

DESCRIPTION="kicker applets"
KEYWORDS="alpha ~amd64 ~hppa ia64 ~ppc ~ppc64 sparc ~x86 ~x86-fbsd"
IUSE=""
DEPEND="|| ( >=kde-base/kicker-${PV}:${SLOT} >=kde-base/kdebase-${PV}:${SLOT} )"

RDEPEND="${DEPEND}"

src_compile() {
	myconf="--without-xmms"
	kde-meta_src_compile
}
