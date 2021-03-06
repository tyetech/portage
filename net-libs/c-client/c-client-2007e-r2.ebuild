# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/c-client/c-client-2007e-r2.ebuild,v 1.10 2011/07/17 21:31:11 halcy0n Exp $

EAPI="2"

inherit flag-o-matic eutils libtool toolchain-funcs

MY_PN=imap
MY_P="${MY_PN}-${PV}"
S=${WORKDIR}/${MY_P}

DESCRIPTION="UW IMAP c-client library"
HOMEPAGE="http://www.washington.edu/imap/"
SRC_URI="ftp://ftp.cac.washington.edu/imap/${MY_P}.tar.Z"

LICENSE="as-is"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86 ~x86-fbsd"
IUSE="doc kernel_linux kernel_FreeBSD kolab pam ssl"

RDEPEND="ssl? ( dev-libs/openssl )
	!net-mail/uw-imap"
DEPEND="${RDEPEND}
	kernel_linux? ( pam? ( >=sys-libs/pam-0.72 ) )"

src_prepare() {
	# Tarball packed with bad file perms
	chmod -R u+rwX,go-w .

	# lots of things need -fPIC, including various platforms, and this library
	# generally should be built with it anyway.
	append-flags -fPIC

	# Modifications so we can build it optimally and correctly
	sed \
		-e "s:BASECFLAGS=\".*\":BASECFLAGS=:g" \
		-e 's:SSLDIR=/usr/local/ssl:SSLDIR=/usr:g' \
		-e 's:SSLCERTS=$(SSLDIR)/certs:SSLCERTS=/etc/ssl/certs:g' \
		-i src/osdep/unix/Makefile || die "Makefile sed fixing failed"

	# Targets should use the Gentoo (ie linux) fs
	sed -e '/^bsf:/,/^$/ s:ACTIVEFILE=.*:ACTIVEFILE=/var/lib/news/active:g' \
		-i src/osdep/unix/Makefile || die "Makefile sex fixing failed for FreeBSD"

	# Apply a patch to only build the stuff we need for c-client
	epatch "${FILESDIR}"/${PN}-2006k_GENTOO_Makefile.patch || die "epatch failed"

	# Apply patch to add the compilation of a .so for PHP
	# This was previously conditional, but is more widely useful.
	epatch "${FILESDIR}"/${PN}-2006k_GENTOO_amd64-so-fix.patch

	# Remove the pesky checks about SSL stuff
	sed -e '/read.*exit/d' -i Makefile

	# Respect LDFLAGS
	epatch "${FILESDIR}"/${P}-ldflags.patch
	sed -e "s/CC=cc/CC=$(tc-getCC)/" \
		-e "s/ARRC=ar/ARRC=$(tc-getAR)/" \
		-e "s/RANLIB=ranlib/RANLIB=$(tc-getRANLIB)/" \
		-i src/osdep/unix/Makefile || die "Respecting build flags"

	# Add kolab support.
	# http://kolab.org/cgi-bin/viewcvs-kolab.cgi/server/patches/imap/
	if use kolab ; then
		epatch "${FILESDIR}"/${PN}-2006k_KOLAB_Annotations.patch || die "epatch failed"
	fi

	elibtoolize
}

src_compile() {
	local ssltype target
	use ssl && ssltype="unix" || ssltype="none"
	if use kernel_linux ; then
		use pam && target=lnp || target=lnx
	elif use kernel_FreeBSD ; then
		target=bsf
	fi
	# no parallel builds supported!
	emake -j1 SSLTYPE=${ssltype} $target EXTRACFLAGS="${CFLAGS}" EXTRALDFLAGS="${LDFLAGS}" || die "make failed"
}

src_install() {
	# Library binary
	dolib.a c-client/c-client.a || die
	dosym c-client.a /usr/$(get_libdir)/libc-client.a

	# Now the shared library
	dolib.so c-client/libc-client.so.1.0.0 || die

	dosym libc-client.so.1.0.0 /usr/$(get_libdir)/libc-client.so
	dosym libc-client.so.1.0.0 /usr/$(get_libdir)/libc-client.so.1

	# Headers
	insinto /usr/include/imap
	doins c-client/*.h
	doins c-client/linkage.c
	#exclude these dupes (can't do it before now due to symlink hell)
	rm "${D}"/usr/include/imap/os_*.h

	# Docs
	dodoc README docs/*.txt docs/BUILD docs/CONFIG docs/RELNOTES docs/SSLBUILD
	if use doc; then
		docinto rfc
		dodoc docs/rfc/*.txt
		docinto draft
		dodoc docs/draft/*
	fi
}
