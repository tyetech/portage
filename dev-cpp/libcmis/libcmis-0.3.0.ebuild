# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-cpp/cvs-repo/gentoo-x86/dev-cpp/libcmis/libcmis-0.3.0.ebuild,v 1.1 2012/09/13 15:53:20 scarabeus Exp $

EAPI=4

EGIT_REPO_URI="git://gitorious.org/libcmis/libcmis.git"
[[ ${PV} == 9999 ]] && SCM_ECLASS="git-2"
inherit eutils alternatives autotools ${SCM_ECLASS}
unset SCM_ECLASS

DESCRIPTION="C++ client library for the CMIS interface"
HOMEPAGE="https://sourceforge.net/projects/libcmis/"
[[ ${PV} == 9999 ]] || SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="|| ( GPL-2 LGPL-2 MPL-1.1 )"
SLOT="0.3"
[[ ${PV} == 9999 ]] || KEYWORDS="~amd64 ~ppc ~x86 ~amd64-linux ~x86-linux"
IUSE="static-libs man test"

RDEPEND="
	!dev-cpp/libcmis:0
	dev-libs/boost
	dev-libs/libxml2
	net-misc/curl
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	man? ( app-text/docbook2X )
	test? ( dev-util/cppunit )
"

src_prepare() {
	[[ ${PV} == 9999 ]] && eautoreconf
}

src_configure() {
	econf \
		--docdir="${EPREFIX}"/usr/share/doc/${PF} \
		--program-suffix=-${SLOT} \
		--disable-werror \
		$(use_with man) \
		$(use_enable static-libs static) \
		$(use_enable test tests) \
		--disable-long-tests \
		--enable-client
}

src_install() {
	default
	prune_libtool_files --all
}

pkg_postinst() {
	alternatives_auto_makesym /usr/bin/cmis-client "/usr/bin/cmis-client-[0-9].[0-9]"
}

pkg_postrm() {
	alternatives_auto_makesym /usr/bin/cmis-client "/usr/bin/cmis-client-[0-9].[0-9]"
}
