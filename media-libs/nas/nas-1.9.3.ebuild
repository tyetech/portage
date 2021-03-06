# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/nas/nas-1.9.3.ebuild,v 1.1 2012/01/20 21:58:43 ssuominen Exp $

inherit eutils toolchain-funcs

DESCRIPTION="Network Audio System"
HOMEPAGE="http://radscan.com/nas.html"
SRC_URI="mirror://sourceforge/${PN}/${P}.src.tar.gz"

LICENSE="as-is MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd"
IUSE="doc static-libs"

RDEPEND="x11-libs/libX11
	x11-libs/libXau
	x11-libs/libXaw
	x11-libs/libXp
	x11-libs/libXres
	x11-libs/libXt
	x11-libs/libXTrap"
DEPEND="${RDEPEND}
	app-text/rman
	x11-misc/gccmakedep
	x11-misc/imake
	x11-proto/xproto"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch \
		"${FILESDIR}"/${PN}-1.9.2-asneeded.patch \
		"${FILESDIR}"/${PN}-1.9.2-implicit-inet_ntoa-amd64.patch
}

src_compile() {
	xmkmf -a || die

# I *think* this was because of missing -a switch in xmkmf, lets test without:
#	touch doc/man/lib/tmp.{_man,man}

	# EXTRA_LDOPTIONS, SHLIBGLOBALSFLAGS #336564#c2
	emake \
		AR="$(tc-getAR) clq" \
		AS="$(tc-getAS)" \
		CC="$(tc-getCC)" \
		CDEBUGFLAGS="${CFLAGS}" \
		CXX="$(tc-getCXX)" \
		CXXDEBUFLAGS="${CXXFLAGS}" \
		EXTRA_LDOPTIONS="${LDFLAGS}" \
		LD="$(tc-getLD)" \
		MAKE="${MAKE:-gmake}" \
		RANLIB="$(tc-getRANLIB)" \
		SHLIBGLOBALSFLAGS="${LDFLAGS}" \
		World || die
}

src_install() {
	emake DESTDIR="${D}" install install.man || die
	dodoc BUILDNOTES FAQ HISTORY README RELEASE TODO

	if use doc; then
		docinto doc
		dodoc doc/{actions,protocol.txt,README}
		docinto pdf
		dodoc doc/pdf/*.pdf
	fi

	mv -vf "${D}"/etc/nas/nasd.conf{.eg,} || die

	newconfd "${FILESDIR}"/nas.conf.d nas || die
	newinitd "${FILESDIR}"/nas.init.d nas || die

	use static-libs || rm -f "${D}"/usr/lib*/libaudio.a

	[[ -e ${D}/usr/bin/nasd ]] || \
		die "Missing nasd executable in the destination directory. Exiting." #314631
}
