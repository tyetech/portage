# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-doc/cvs-repo/gentoo-x86/app-doc/linux-kernel-in-a-nutshell/linux-kernel-in-a-nutshell-1.ebuild,v 1.2 2010/10/19 09:05:30 leio Exp $

inherit eutils

DESCRIPTION="Linux Kernel in a Nutshell: A Desktop Quick Reference"
HOMEPAGE="http://www.kroah.com/lkn/"
SRC_URI="mirror://kernel/linux/kernel/people/gregkh/lkn/lkn_pdf.tar.bz2
	mirror://kernel/linux/kernel/people/gregkh/lkn/lkn_xml.tar.bz2"

LICENSE="CCPL-Attribution-ShareAlike-2.5"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 s390 sh sparc x86"
IUSE=""

DEPEND=""

S=${WORKDIR}

src_install() {
	insinto /usr/share/doc/${PN}/pdf
	doins -r lkn_pdf/* || die
	insinto /usr/share/doc/${PN}/xml
	doins -r lkn_xml/* || die
}
