# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/mail-client/cvs-repo/gentoo-x86/mail-client/claws-mail-fetchinfo/claws-mail-fetchinfo-0.4.24.ebuild,v 1.7 2012/05/04 08:42:21 jdhore Exp $

MY_P="${PN#claws-mail-}-plugin-${PV}"

DESCRIPTION="Plugin to add additional headers with download information"
HOMEPAGE="http://www.claws-mail.org/"
SRC_URI="http://www.claws-mail.org/downloads/plugins/${MY_P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 ~ppc ppc64 x86"
IUSE=""
RDEPEND=">=mail-client/claws-mail-3.7.0"
DEPEND="${RDEPEND}
		virtual/pkgconfig"

S="${WORKDIR}/${MY_P}"

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc ChangeLog README

	# kill useless files
	rm -f "${D}"/usr/lib*/claws-mail/plugins/*.{a,la}
}
