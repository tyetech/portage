# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-RAI/XML-RAI-1.303.100.ebuild,v 1.4 2011/12/18 19:51:46 phajdan.jr Exp $

EAPI=3

MODULE_AUTHOR=TIMA
MODULE_VERSION=1.3031
inherit perl-module

DESCRIPTION="RSS Abstraction Interface."

LICENSE="Artistic"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

#SRC_TEST="do"

DEPEND=">=dev-perl/TimeDate-1.16
	dev-perl/XML-Elemental
	>=dev-perl/XML-RSS-Parser-4
	dev-perl/Class-XPath"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i "/^require Task::Weaken/d" "${S}"/Makefile.PL || die
	perl-module_src_prepare
}
