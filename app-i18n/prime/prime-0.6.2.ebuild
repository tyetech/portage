# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-i18n/cvs-repo/gentoo-x86/app-i18n/prime/Attic/prime-0.6.2.ebuild,v 1.1 2003/12/05 11:52:30 usata Exp $

inherit ruby

IUSE="emacs"

DESCRIPTION="PRIME -- Japanese PRedictive Input Method Editor"
HOMEPAGE="http://taiyaki.org/prime/"
SRC_URI="http://prime.sourceforge.jp/src/${P}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~x86"
SLOT="0"

S="${WORKDIR}/${P}"

DEPEND="dev-lang/ruby
	app-dicts/prime-dict
	dev-ruby/sary-ruby
	dev-libs/suikyo
	emacs? ( app-emacs/prime-el )"

EXTRA_ECONF="--with-prime-docdir=/usr/share/doc/${PF}/html
	--with-rubydir=/usr/lib/ruby/site_ruby"

src_install() {

	einstall || die
	make DESTDIR=${D} install-etc || die

	erubydoc || die

}
