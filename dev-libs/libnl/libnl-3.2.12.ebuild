# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/libnl/libnl-3.2.12.ebuild,v 1.2 2012/09/01 17:45:51 jer Exp $

EAPI=4
inherit autotools eutils multilib

DESCRIPTION="A library for applications dealing with netlink socket"
HOMEPAGE="http://www.infradead.org/~tgr/libnl/"
SRC_URI="http://www.infradead.org/~tgr/libnl/files/${P}.tar.gz"
LICENSE="LGPL-2.1"
SLOT="3"
KEYWORDS="~amd64 ~arm ~hppa ~ppc ~ppc64 ~s390 ~sh ~x86 ~amd64-linux ~ia64-linux ~x86-linux"
IUSE="doc static-libs utils"

DEPEND="
	sys-devel/flex
	sys-devel/bison
	doc? (
		app-doc/doxygen[latex]
		app-text/asciidoc
		dev-python/pygments
		dev-util/source-highlight
		media-gfx/mscgen
	)
"

src_prepare() {
	epatch \
		"${FILESDIR}"/${PN}-1.1-vlan-header.patch \
		"${FILESDIR}"/${P}-doc.patch
	eautoreconf
}

src_configure() {
	econf \
		$(use_enable doc) \
		$(use_enable static-libs static) \
		$(use_enable utils cli)
}

src_compile() {
	default
	use doc && emake -C doc api_ref
}

src_install() {
	default
	if use doc; then
		dohtml doc/api/*
	fi

	if ! use static-libs; then
		rm -f "${D}"/usr/lib*/lib*.la
	fi

	dodoc ChangeLog
}
