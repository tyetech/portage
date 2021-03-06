# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-firewall/cvs-repo/gentoo-x86/net-firewall/fwanalog/fwanalog-0.6.4.ebuild,v 1.5 2004/10/04 22:50:07 pvdabeel Exp $

DESCRIPTION="Script to parse firewall logs and analyze them with Analog"
HOMEPAGE="http://tud.at/programm/fwanalog/"
SRC_URI="http://tud.at/programm/fwanalog/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86 ppc sparc"
IUSE=""

DEPEND="" # this is just a bash script
RDEPEND="app-shells/bash
	sys-apps/grep
	sys-apps/gawk
	sys-apps/sed
	app-arch/gzip
	sys-apps/diffutils
	dev-lang/perl
	>=app-admin/analog-5.31"

src_install() {
	insinto /etc/fwanalog

	insopts -m0700 ; doins fwanalog.sh

	insopts -m0600
	doins fwanalog-dom.tab fwanalog.lng services.conf
	doins fwanalog.analog.conf fwanalog.analog.conf.local
	newins fwanalog.opts.linux24 fwanalog.opts

	dosed "s/\"zegrep\"/\"egrep\"/" /etc/fwanalog/fwanalog.opts

	dodoc CONTRIBUTORS ChangeLog README
	docinto support ; dodoc support/*
	docinto langfiles ; dodoc langfiles/*
}
