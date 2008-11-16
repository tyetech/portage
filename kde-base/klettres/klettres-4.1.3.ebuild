# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/klettres/Attic/klettres-4.1.3.ebuild,v 1.2 2008/11/16 07:40:26 vapier Exp $

EAPI="2"

KMNAME=kdeedu
inherit kde4-meta

DESCRIPTION="KDE: KLettres helps a very young child or an adult learning "
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug htmlhandbook"

RDEPEND=">=kde-base/knotify-${PV}:${SLOT}"
