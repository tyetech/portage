# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/eselect-ruby/Attic/eselect-ruby-20081211.ebuild,v 1.2 2008/12/24 07:50:22 bluebird Exp $

DESCRIPTION="Manages multiple Ruby versions"
HOMEPAGE="http://www.gentoo.org"
SRC_URI="http://dev.a3li.info/gentoo/distfiles/ruby.eselect-${PVR}.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~sparc ~x86"
IUSE=""

RDEPEND=">=app-admin/eselect-1.0.2"

src_install() {
	insinto /usr/share/eselect/modules
	newins "${WORKDIR}/ruby.eselect-${PVR}" ruby.eselect || die
}
