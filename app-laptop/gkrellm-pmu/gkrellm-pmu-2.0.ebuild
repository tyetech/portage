# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-laptop/cvs-repo/gentoo-x86/app-laptop/gkrellm-pmu/Attic/gkrellm-pmu-2.0.ebuild,v 1.4 2004/06/28 02:34:43 vapier Exp $

DESCRIPTION="GKrellM2 plugin for battery display on Apple machines"
HOMEPAGE="http://www.cymes.de/members/joker/projects/gkrellm-pmu/gkrellm-pmu.html"
SRC_URI="http://www.cymes.de/members/joker/projects/gkrellm-pmu/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="2"
KEYWORDS="~ppc"
IUSE=""

DEPEND="=app-admin/gkrellm-2*"

src_install() {
	dodir /usr/lib/gkrellm2/plugins
	einstall PLUGIN_INSTALL="${D}/usr/lib/gkrellm2/plugins" || die
	dodoc ChangeLog INSTALL README
}
