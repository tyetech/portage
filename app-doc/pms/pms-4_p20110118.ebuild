# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-doc/cvs-repo/gentoo-x86/app-doc/pms/pms-4_p20110118.ebuild,v 1.4 2012/09/23 09:52:20 ulm Exp $

EAPI=2

DESCRIPTION="Gentoo Package Manager Specification"
HOMEPAGE="http://www.gentoo.org/proj/en/qa/pms.xml"
SRC_URI="mirror://gentoo/${P}.pdf"

LICENSE="CCPL-Attribution-ShareAlike-3.0"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k ~mips ppc ppc64 s390 sh sparc x86 ~ppc-aix ~amd64-fbsd ~sparc-fbsd ~x86-fbsd ~x64-freebsd ~x86-freebsd ~hppa-hpux ~ia64-hpux ~x86-interix ~amd64-linux ~arm-linux ~ia64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~m68k-mint ~x86-netbsd ~ppc-openbsd ~x64-openbsd ~x86-openbsd ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris ~x86-winnt"
IUSE=""

src_unpack() {
	:
}

src_install() {
	newdoc "${DISTDIR}"/${P}.pdf pms.pdf || die
}
