# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-dpkg/selinux-dpkg-2.20120215.ebuild,v 1.2 2012/04/29 10:11:56 swift Exp $
EAPI="4"

IUSE=""
MODS="dpkg"
BASEPOL="2.20120215-r1"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for dpkg"
KEYWORDS="amd64 x86"
