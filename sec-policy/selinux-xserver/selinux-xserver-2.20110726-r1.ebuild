# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-xserver/Attic/selinux-xserver-2.20110726-r1.ebuild,v 1.1 2011/12/17 10:39:17 swift Exp $
EAPI="4"

IUSE=""
MODS="xserver"
BASEPOL="2.20110726-r8"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for xserver"

KEYWORDS="~amd64 ~x86"
