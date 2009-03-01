# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gpe-base/cvs-repo/gentoo-x86/gpe-base/libeventdb/libeventdb-0.90.ebuild,v 1.1 2009/03/01 00:23:21 solar Exp $

GPE_TARBALL_SUFFIX="bz2"

inherit gpe eutils

DESCRIPTION="Database access library for GPE calendar"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~arm ~amd64 ~x86"
IUSE="${IUSE}"
DOCS="ChangeLog"

src_unpack() {
	gpe_src_unpack "$@"

	epatch "${FILESDIR}"/libeventdb-unbreak-LIVE-macro.patch
}

RDEPEND="${RDEPEND}
	>=gpe-base/libgpewidget-0.113
	>=gpe-base/libgpepimc-0.6
	=dev-db/sqlite-2.8*"

DEPEND="${DEPEND} ${RDEPEND}"
