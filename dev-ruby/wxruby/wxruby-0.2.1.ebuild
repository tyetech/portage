# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/wxruby/Attic/wxruby-0.2.1.ebuild,v 1.2 2004/04/17 00:25:31 dholm Exp $

DESCRIPTION="Ruby language bindings for the wxWidgets GUI toolkit"
HOMEPAGE="http://rubyforge.org/projects/wxruby/"
SRC_URI="http://rubyforge.org/frs/download.php/401/${PN}-${PV}-src.tgz"
LICENSE="wxWinLL-3"
SLOT="0"
KEYWORDS="~x86 ~ppc"
IUSE=""
DEPEND=">=dev-lang/ruby-1.8
	>=x11-libs/wxGTK-2.4.1"

pkg_setup() {
	use unicode && die "${CATEGORY}/${PN} is incompatible with USE=\"unicode\""
}

src_compile() {
	( cd src && ruby extconf.rb && emake ) || die
}

src_install() {
	dodoc [A-Z]*
	cp -r samples ${D}/usr/share/doc/${PF}
	( cd src && make DESTDIR=${D} install )
}
