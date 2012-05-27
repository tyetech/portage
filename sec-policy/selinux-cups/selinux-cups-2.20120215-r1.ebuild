# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-cups/selinux-cups-2.20120215-r1.ebuild,v 1.2 2012/05/27 10:16:52 swift Exp $
EAPI="4"

IUSE=""
MODS="cups"
BASEPOL="2.20120215-r9"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for cups"

KEYWORDS="~amd64 ~x86"
DEPEND=">=sec-policy/selinux-lpd-2.20120215"
RDEPEND="${DEPEND}"
