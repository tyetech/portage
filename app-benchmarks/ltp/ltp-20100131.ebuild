# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-benchmarks/cvs-repo/gentoo-x86/app-benchmarks/ltp/ltp-20100131.ebuild,v 1.2 2010/11/10 19:12:57 patrick Exp $

EAPI="2"

inherit eutils portability flag-o-matic

MY_P="${PN}-full-${PV}"
S="${WORKDIR}/${MY_P}"
DESCRIPTION="Linux Test Project: testsuite for the linux kernel"
HOMEPAGE="http://ltp.sourceforge.net/"
SRC_URI="mirror://sourceforge/ltp/${MY_P}.tgz"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

# add "dialog" to depends if ltpmenu is enabled

src_prepare() {
	# IDcheck patch not needed anymore, superseded by CREATE=0
	epatch "${FILESDIR}/runltp-path.patch"

	# All that remains of bad perl paths
	sed -i -e '1s,#!/usr/bin/perl5,#!/usr/bin/perl,' \
		"${S}/testcases/ballista/ballista/create_code_standAlone.pl"
}

src_compile() {
	# avoid creating groups
	export CREATE=0
	# Lazy binds are bad
	# TODO: Fix in upstream package
	append-ldflags -Wl,-z,now
	# actually build
	LDFLAGS="${LDFLAGS}" PREFIX=${D}/opt/blah emake DESTDIR="${D}" || die "emake failed"
}

src_install() {
	# avoid creating groups
	export CREATE=0
	DESTDIR="${D}" make install || die "install failed"
	dodir /usr/libexec/ltp/testcases

	treecopy testcases pan/pan runtest ver_linux IDcheck.sh \
		"${D}/usr/libexec/ltp" || die "treecopy failed"
	# TODO: clean up testcases directory to only include the data files

	dobin runltp runalltests.sh || die "dobin failed"

	# TODO: fix this so it works from "outside" the source tree
	# cp ltpmenu ${D}/usr/bin

	# fix world-writable files
	chmod -R o-w "${D}/usr/libexec/ltp/testcases"
	# Full list, TODO: fix in upstream
##	a=/usr/libexec/ltp/testcases
##	for i in ${a}/network/tcp_cmds/ftp/datafiles/ascii.sm \
##		${a}/network/tcp_cmds/ftp/datafiles/ascii.med \
##		${a}/network/tcp_cmds/ftp/datafiles/ascii.lg \
##		${a}/network/tcp_cmds/ftp/datafiles/ascii.jmb \
##		${a}/network/tcp_cmds/ftp/datafiles/bin.sm \
##		${a}/network/tcp_cmds/ftp/datafiles/bin.med \
##		${a}/network/tcp_cmds/ftp/datafiles/bin.lg \
##		${a}/network/tcp_cmds/ftp/datafiles/bin.jmb \
##		${a}/network/tcp_cmds/rcp/datafiles/bin.sm \
##		${a}/network/tcp_cmds/rcp/datafiles/bin.med \
##		${a}/network/tcp_cmds/rcp/datafiles/bin.lg \
##		${a}/network/tcp_cmds/rcp/datafiles/bin.jmb \
##		${a}/network/tcp_cmds/rcp/datafiles/ascii.sm \
##		${a}/network/tcp_cmds/rdist/datafiles/bin.sm \
##		${a}/network/tcp_cmds/rdist/datafiles/bin.med \
##		${a}/network/tcp_cmds/rdist/datafiles/bin.lg \
##		${a}/network/tcp_cmds/rdist/datafiles/bin.jmb \
##		${a}/network/tcp_cmds/sendfile/datafiles/ascii.sm \
##		${a}/network/tcp_cmds/sendfile/datafiles/ascii.med \
##		${a}/network/tcp_cmds/sendfile/datafiles/ascii.lg \
##		${a}/network/tcp_cmds/sendfile/datafiles/ascii.jmb \
##		${a}/network/nfs/nfs02/dat/smallsize.fil \
##		${a}/network/nfs/nfs02/dat/medsize.fil \
##		${a}/network/nfs/nfs02/dat/largesize.fil \
##		${a}/network/nfs/nfs02/dat/maxsize.fil \
##		${a}/network/ipv6/sendfile6/datafiles/ascii.sm \
##		${a}/network/ipv6/sendfile6/datafiles/ascii.med \
##		${a}/network/ipv6/sendfile6/datafiles/ascii.lg \
##		${a}/network/ipv6/sendfile6/datafiles/ascii.jmb \
##		${a}/kernel/sched/sched_stress/sched_datafile \
##		${a}/bin/sched_datafile ;
##	do chmod 644 ${D}${i} ; done ;
}
