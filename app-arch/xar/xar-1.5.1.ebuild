# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/xar/Attic/xar-1.5.1.ebuild,v 1.2 2007/12/09 07:35:31 vapier Exp $

DESCRIPTION="an easily extensible archive format"
HOMEPAGE="http://code.google.com/p/xar"
SRC_URI="http://xar.googlecode.com/files/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""

# this also has optional acl/bzip2 linkage ...
DEPEND="dev-libs/openssl
	dev-libs/libxml2
	sys-libs/zlib"

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed."
}
