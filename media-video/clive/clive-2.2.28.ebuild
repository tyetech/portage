# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-video/cvs-repo/gentoo-x86/media-video/clive/clive-2.2.28.ebuild,v 1.1 2011/10/24 04:39:52 radhermit Exp $

EAPI=4

inherit perl-app

DESCRIPTION="Command line tool for extracting videos from various websites"
HOMEPAGE="http://clive.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${PV:0:3}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="clipboard pager password test"

RDEPEND=">=dev-perl/BerkeleyDB-0.34
	>=dev-perl/Config-Tiny-2.12
	>=virtual/perl-Digest-SHA-5.47
	>=dev-perl/HTML-TokeParser-Simple-2.37
	>=dev-perl/Class-Singleton-1.4
	>=dev-perl/WWW-Curl-4.05
	>=dev-perl/XML-Simple-2.18
	>=dev-perl/Getopt-ArgvFile-1.11
	dev-perl/URI
	virtual/perl-Getopt-Long
	virtual/perl-File-Spec
	clipboard? ( >=dev-perl/Clipboard-0.09 )
	pager? ( >=dev-perl/IO-Pager-0.05 )
	password? ( >=dev-perl/Expect-1.21 )"
DEPEND="test? ( dev-perl/Test-Pod
	${RDEPEND} )"

SRC_TEST=do
mydoc="NEWS"

src_test() {
	if [ -z "${I_WANT_CLIVE_HOSTS_TESTS}" ] ; then
		elog "If you wish to run the full testsuite of ${PN}"
		elog "Please set the variable 'I_WANT_CLIVE_HOSTS_TESTS' variable"
		elog "Note that the tests try to download some videos from various websites"
		elog "and thus may randomly fail depending on the site's status."
		export NO_INTERNET=1
	fi
	perl-module_src_test
}
