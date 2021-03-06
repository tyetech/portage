# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-libs/cvs-repo/gentoo-x86/dev-libs/fcgi/fcgi-2.4.1_pre0311112127.ebuild,v 1.8 2010/03/01 10:59:34 ssuominen Exp $

inherit eutils autotools multilib

DESCRIPTION="FastCGI Developer's Kit"
HOMEPAGE="http://www.fastcgi.com/"
SRC_URI="http://www.fastcgi.com/dist/fcgi-2.4.1-SNAP-0311112127.tar.gz"

LICENSE="FastCGI"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86 ~x86-fbsd"
IUSE="html"

DEPEND=""
RDEPEND=""

S="${WORKDIR}/fcgi-2.4.1-SNAP-0311112127"

MAKEOPTS="${MAKEOPTS} -j1" # http://bugs.gentoo.org/show_bug.cgi?id=302477#c8

src_unpack() {
	unpack ${A}
	cd "${S}"

	epatch "${FILESDIR}/fcgi-2.4.0-Makefile.patch"
	epatch "${FILESDIR}/fcgi-2.4.0-clientdata-pointer.patch"
	epatch "${FILESDIR}/fcgi-2.4.0-html-updates.patch"
	epatch "${FILESDIR}"/${P}-gcc44.patch

	eautoreconf
}

src_compile() {
	econf || die "econf failed"
	emake || die "make failed"
}

src_install() {
	emake DESTDIR="${D}" install LIBRARY_PATH="${D}/usr/$(get_libdir)" || die

	dodoc README

	# install the manpages into the right place
	doman doc/*.[13]

	# Only install the html documentation if USE=html
	if use html ; then
		dohtml "${S}"/doc/*/*
		insinto /usr/share/doc/${PF}/html
		doins -r "${S}/images"
	fi

	# install examples in the right place
	insinto /usr/share/doc/${PF}/examples
	doins "${S}/examples/"*.c
}
