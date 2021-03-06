# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/mail-client/cvs-repo/gentoo-x86/mail-client/clawsker/clawsker-0.7.8.ebuild,v 1.1 2012/08/01 22:43:40 fauli Exp $

DESCRIPTION="Applet to edit Claws Mail's hidden preferences."
HOMEPAGE="http://www.claws-mail.org/clawsker/"
SRC_URI="http://www.claws-mail.org/tools/${P}.tar.gz"
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/perl-5.8.0
	>=dev-perl/gtk2-perl-1.200
	>=dev-perl/Locale-gettext-1.05
	>=mail-client/claws-mail-3.5.0"

src_compile() {
	emake || die
}

src_install() {
	emake install DESTDIR="${D}" PREFIX=/usr || die
}
