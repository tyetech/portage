# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-dbskk/selinux-dbskk-9999.ebuild,v 1.1 2012/10/13 16:30:51 swift Exp $
EAPI="4"

IUSE=""
MODS="dbskk"
BASEPOL="9999"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for dbskk"

KEYWORDS=""
DEPEND="${DEPEND}
	sec-policy/selinux-inetd
"
RDEPEND="${DEPEND}"
