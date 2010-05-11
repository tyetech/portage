# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/ConfigReader/Attic/ConfigReader-0.5.ebuild,v 1.11 2010/05/11 08:09:56 tove Exp $

EAPI=2

PERL_EXPORT_PHASE_FUNCTIONS=no
MODULE_AUTHOR=AMW
inherit perl-module

DESCRIPTION="Read directives from a configuration file."

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="amd64 ia64 ~ppc sparc x86"
IUSE=""

src_install() {
	perlinfo
	insinto ${VENDOR_LIB}/${PN}
	doins "${S}"/*.pm || die
	insinto ${VENDOR_LIB}
	doins "${S}"/*.pod || die
	dodoc README || die
}
