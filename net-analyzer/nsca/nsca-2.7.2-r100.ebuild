# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/nsca/nsca-2.7.2-r100.ebuild,v 1.1 2012/08/23 21:27:08 flameeyes Exp $

inherit multilib

DESCRIPTION="Nagios NSCA  - Nagios Service Check Acceptor"
HOMEPAGE="http://www.nagios.org/"
SRC_URI="mirror://sourceforge/nagios/nsca-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE=""

DEPEND=">=net-analyzer/nagios-plugins-1.3.1
	>=dev-libs/libmcrypt-2.5.1-r4"
S="${WORKDIR}/nsca-${PV}"

src_compile() {
	./configure \
		--host=${CHOST} \
		--prefix=/usr \
		--localstatedir=/var/nagios \
		--sysconfdir=/etc/nagios \
		--with-nsca-user=nagios \
		--with-nsca-grp=nagios \
		--infodir=/usr/share/info \
		--mandir=/usr/share/man || die "./configure failed"
	emake all || die "emake failed"
}

src_install() {
	dodoc LEGAL Changelog README SECURITY
	insinto /etc/nagios
	doins "${S}"/sample-config/nsca.cfg
	doins "${S}"/sample-config/send_nsca.cfg

	exeinto /usr/bin
	doexe src/nsca
	fowners nagios:nagios /usr/bin/nsca

	exeinto /usr/$(get_libdir)/nagios/plugins
	doexe src/send_nsca
	fowners nagios:nagios /usr/$(get_libdir)/nagios/plugins/send_nsca
	newinitd "${FILESDIR}"/nsca-nagios3 nsca
}
pkg_postinst() {
	einfo
	einfo "If you are using the nsca daemon, remember to edit"
	einfo "the config file /etc/nagios/nsca.cfg"
	einfo
}
