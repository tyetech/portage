# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/aria2/aria2-1.14.1.ebuild,v 1.4 2012/05/05 03:20:39 jdhore Exp $

EAPI="4"

inherit bash-completion-r1

DESCRIPTION="A download utility with resuming and segmented downloading with HTTP/HTTPS/FTP/BitTorrent support."
HOMEPAGE="http://aria2.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"
LICENSE="GPL-2"
KEYWORDS="~amd64 ~ppc ~ppc64 ~sparc ~x86"
SLOT="0"
IUSE="ares bittorrent doc expat gnutls metalink nls scripts sqlite ssl test xmlrpc"
#IUSE="nettle"
CDEPEND="sys-libs/zlib
	ssl? (
		gnutls? ( >=net-libs/gnutls-1.2.9 )
		!gnutls? ( dev-libs/openssl ) )
	ares? ( >=net-dns/c-ares-1.5.0 )
	bittorrent? (
		gnutls? ( >=net-libs/gnutls-2.2.0 >=dev-libs/libgcrypt-1.2.2 )
		!gnutls? ( dev-libs/openssl ) )
	metalink? (
		!expat? ( >=dev-libs/libxml2-2.6.26 )
		expat? ( dev-libs/expat ) )
	sqlite? ( dev-db/sqlite:3 )
	xmlrpc? (
		!expat? ( >=dev-libs/libxml2-2.6.26 )
		expat? ( dev-libs/expat ) )"
#CDEPEND="bittorrent? (
#		nettle? ( >=dev-libs/nettle-2.4 >=dev-libs/gmp-5 )
#		!nettle? (
#			gnutls? ( >=net-libs/gnutls-2.2.0 >=dev-libs/libgcrypt-1.2.2 )
#			!gnutls? ( dev-libs/openssl ) ) )"

DEPEND="${CDEPEND}
	virtual/pkgconfig
	doc? ( app-text/asciidoc )
	nls? ( sys-devel/gettext )
	test? ( >=dev-util/cppunit-1.12.0 )"
RDEPEND="${CDEPEND}
	scripts? ( dev-lang/ruby )
	nls? ( virtual/libiconv virtual/libintl )"

pkg_setup() {
	if use scripts && use !xmlrpc && use !metalink; then
		ewarn "Please also enable the 'xmlrpc' USE flag to actually use the additional scripts"
	fi
}

src_prepare() {
	sed -i -e "s|/tmp|${T}|" test/*.cc test/*.txt || die "sed failed"
}

src_configure() {
	local myconf="--without-gnutls --without-libgcrypt --without-openssl"
	use ssl && \
		myconf="$(use_with gnutls) $(use_with gnutls libgcrypt) $(use_with !gnutls openssl)"

	local xmllib="--without-libexpat --without-libxml2"
	if use metalink || use xmlrpc ; then
		xmllib="$(use_with expat libexpat) $(use_with !expat libxml2)"
	fi

	use doc || export ac_cv_path_ASCIIDOC=

	# Note:
	# - depends on libgcrypt only when using gnutls
	# - if --without-libexpat or --without-libxml2 are not given, it links against
	#   one of them to provide xmlrpc-functionality
	# - always enable gzip/http compression since zlib should always be available anyway
	# - always enable epoll since we can assume kernel 2.6.x
	# - other options for threads: solaris, pth, win32
	econf \
		--enable-epoll \
		--enable-threads=posix \
		--with-libz \
		$(use_enable nls) \
		$(use_enable metalink) \
		$(use_with sqlite sqlite3) \
		$(use_enable bittorrent) \
		$(use_with ares libcares) \
		--without-libnettle --without-libgmp \
		${xmllib} \
		${myconf}
#		$(use_with nettle libnettle) \
#		$(use_with nettle libgmp) \
}

src_install() {
	default

	rm -rf "${D}/usr/share/doc/aria2"
	dohtml README.html doc/aria2c.1.html

	use bash-completion && dobashcomp doc/bash_completion/aria2c

	use scripts && dobin doc/xmlrpc/aria2{mon,rpc}
}
