# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-admin/cvs-repo/gentoo-x86/app-admin/eselect-ruby/eselect-ruby-20120106.ebuild,v 1.3 2012/09/09 17:35:54 ottxor Exp $

DESCRIPTION="Manages multiple Ruby versions"
HOMEPAGE="http://www.gentoo.org"
SRC_URI="http://dev.a3li.li/gentoo/distfiles/ruby.eselect-${PVR}.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86 ~amd64-fbsd ~sparc-fbsd ~x86-fbsd ~x64-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

RDEPEND=">=app-admin/eselect-1.0.2"

src_install() {
	insinto /usr/share/eselect/modules
	newins "${WORKDIR}/ruby.eselect-${PVR}" ruby.eselect || die
}
