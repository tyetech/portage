# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-inetd/Attic/selinux-inetd-2.20110726-r2.ebuild,v 1.1 2011/12/04 19:02:19 swift Exp $
EAPI="4"

IUSE=""
MODS="inetd"
BASEPOL="2.20110726-r7"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for inetd"

KEYWORDS="~amd64 ~x86"
