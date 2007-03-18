# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-misc/cvs-repo/gentoo-x86/x11-misc/lineak-xosdplugin/Attic/lineak-xosdplugin-0.9.0_pre1.ebuild,v 1.4 2007/03/18 09:38:36 nixnut Exp $

inherit multilib

MY_P=${PN/-/_}-${PV/_/-}
S=${WORKDIR}/${MY_P}

DESCRIPTION="Xosd plugin for LINEAK"
HOMEPAGE="http://lineak.sourceforge.net/"
SRC_URI="mirror://sourceforge/lineak/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="amd64 ppc x86"

RDEPEND="=x11-misc/lineakd-${PV}*
		x11-libs/xosd"
DEPEND="${RDEPEND}"

src_compile() {
	econf --with-x || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	make DESTDIR=${D} \
		PLUGINDIR=/usr/$(get_libdir)/lineakd/plugins \
		install || die "make install failed"
	dodoc AUTHORS README
}
