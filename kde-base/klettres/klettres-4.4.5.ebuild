# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/klettres/Attic/klettres-4.4.5.ebuild,v 1.5 2010/08/09 17:35:26 scarabeus Exp $

EAPI="3"

KMNAME="kdeedu"
inherit kde4-meta

DESCRIPTION="KDE: KLettres helps a very young child or an adult learning "
KEYWORDS="amd64 ppc ~ppc64 x86 ~amd64-linux ~x86-linux"
IUSE="debug +handbook"

RDEPEND="
	$(add_kdebase_dep knotify)
"
