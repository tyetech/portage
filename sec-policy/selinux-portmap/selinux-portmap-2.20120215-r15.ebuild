# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-portmap/selinux-portmap-2.20120215-r15.ebuild,v 1.1 2012/07/26 13:07:39 swift Exp $
EAPI="4"

IUSE=""
MODS="portmap"
BASEPOL="2.20120215-r15"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for portmap"

KEYWORDS="~amd64 ~x86"
