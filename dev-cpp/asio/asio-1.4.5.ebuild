# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-cpp/cvs-repo/gentoo-x86/dev-cpp/asio/asio-1.4.5.ebuild,v 1.10 2010/09/13 07:11:10 josejx Exp $

EAPI=2

DESCRIPTION="Asynchronous Network Library"
HOMEPAGE="http://asio.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="Boost-1.0"
SLOT="0"
KEYWORDS="alpha amd64 ~hppa ia64 ppc ppc64 sparc x86"
IUSE="doc examples ssl test"

RDEPEND="ssl? ( dev-libs/openssl )
	>=dev-libs/boost-1.35.0"
DEPEND="${RDEPEND}"

src_prepare() {
	if ! use test; then
		# Don't build nor install any examples or unittests
		# since we don't have a script to run them
		cat > src/Makefile.in <<-EOF
all:

install:
		EOF
	fi
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc README

	if use doc; then
		dohtml -r doc/*
	fi

	if use examples; then
		if use test; then
			# Get rid of the object files
			emake clean || die
		fi
		insinto /usr/share/doc/${PF}
		doins -r src/examples
	fi
}
