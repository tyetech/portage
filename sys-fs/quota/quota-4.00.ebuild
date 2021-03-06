# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/quota/quota-4.00.ebuild,v 1.2 2011/12/04 16:48:58 vapier Exp $

EAPI="2"

inherit eutils flag-o-matic

DESCRIPTION="Linux quota tools"
HOMEPAGE="http://sourceforge.net/projects/linuxquota/"
SRC_URI="mirror://sourceforge/linuxquota/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~sparc ~x86"
IUSE="ldap netlink nls rpc tcpd"

RDEPEND="ldap? ( >=net-nds/openldap-2.3.35 )
	netlink? (
		sys-apps/dbus
		dev-libs/libnl:1.1
	)
	rpc? ( net-nds/rpcbind )
	tcpd? ( sys-apps/tcp-wrappers )"
DEPEND="${RDEPEND}
	nls? ( sys-devel/gettext )"

S=${WORKDIR}/quota-tools

src_configure() {
	econf \
		$(use_enable nls) \
		$(use_enable ldap ldapmail) \
		$(use_enable netlink) \
		$(use_enable rpc) \
		$(use_enable rpc rpcsetquota)
}

src_install() {
	emake STRIP="" ROOTDIR="${D}" install || die
	dodoc doc/* README.* Changelog
	rm -r "${D}"/usr/include || die #70938

	insinto /etc
	insopts -m0644
	doins warnquota.conf quotatab || die

	newinitd "${FILESDIR}"/quota.rc7 quota
	newconfd "${FILESDIR}"/quota.confd quota

	if use rpc ; then
		newinitd "${FILESDIR}"/rpc.rquotad.initd rpc.rquotad
	else
		rm -f "${D}"/usr/sbin/rpc.rquotad
	fi

	if use ldap ; then
		insinto /etc/openldap/schema
		insopts -m0644
		doins ldap-scripts/quota.schema || die

		exeinto /usr/share/quota/ldap-scripts
		doexe ldap-scripts/*.pl || die
		doexe ldap-scripts/edquota_editor || die
	fi
}
