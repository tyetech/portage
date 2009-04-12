# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-arch/cvs-repo/gentoo-x86/app-arch/createrepo/Attic/createrepo-0.9.7.ebuild,v 1.1 2009/04/12 07:31:37 vapier Exp $

EAPI="2"

DESCRIPTION="Creates a common metadata repository"
HOMEPAGE="http://createrepo.baseurl.org/"
SRC_URI="http://createrepo.baseurl.org/download/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lang/python
	>=dev-python/urlgrabber-2.9.0
	>=app-arch/rpm-4.0[python]
	dev-libs/libxml2[python]"

src_compile() { :; }

src_install() {
	emake install DESTDIR="${D}" || die
	dodoc ChangeLog README
}
