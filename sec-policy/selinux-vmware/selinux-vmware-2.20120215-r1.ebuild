# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-vmware/selinux-vmware-2.20120215-r1.ebuild,v 1.2 2012/05/31 07:30:58 swift Exp $
EAPI="4"

IUSE=""
MODS="vmware"
BASEPOL="2.20120215-r9"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for vmware"

KEYWORDS="~amd64 ~x86"
DEPEND=">=sec-policy/selinux-xserver-2.20120215"
RDEPEND="${DEPEND}"
