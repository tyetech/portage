# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-corosync/selinux-corosync-2.20120215-r15.ebuild,v 1.1 2012/07/26 13:07:05 swift Exp $
EAPI="4"

IUSE=""
MODS="corosync"
BASEPOL="2.20120215-r15"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for corosync"

KEYWORDS="~amd64 ~x86"
