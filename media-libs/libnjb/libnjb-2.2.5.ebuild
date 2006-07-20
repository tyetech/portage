# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/libnjb/Attic/libnjb-2.2.5.ebuild,v 1.4 2006/07/20 17:55:28 corsair Exp $

inherit eutils libtool

DESCRIPTION="libnjb is a C library and API for communicating with the Creative Nomad JukeBox digital audio player under BSD and Linux."
HOMEPAGE="http://libnjb.sourceforge.net/"
SRC_URI="mirror://sourceforge/libnjb/${P}.tar.gz"
IUSE=""
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86 ~x86-fbsd"

DEPEND=">=dev-libs/libusb-0.1.7"

S=${WORKDIR}/${PN}-${PV/_*}

src_unpack() {
	unpack ${A}

	cd "${S}"
	sed -i "s:SUBDIRS = src sample doc:SUBDIRS = src doc:" Makefile.in || die "sed failed"
	elibtoolize
}

src_compile() {
	econf --enable-hotplugging || die "./configure failed."
	emake || die "make failed."
}

src_install() {
	emake DESTDIR="${D}" install || die "failed to install"

	# Backwards compatability
	dosym libnjb.so /usr/$(get_libdir)/libnjb.so.0

	dodoc HACKING FAQ INSTALL ChangeLog README
	exeinto /etc/hotplug/usb/
	doexe nomadjukebox
}
