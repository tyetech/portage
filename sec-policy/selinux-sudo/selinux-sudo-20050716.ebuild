# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-sudo/Attic/selinux-sudo-20050716.ebuild,v 1.1 2005/08/23 06:17:30 kaiowas Exp $

inherit selinux-policy

TEFILES="sudo.te"
FCFILES="sudo.fc"
MACROS="sudo_macros.te"
IUSE=""
RDEPEND=">=sec-policy/selinux-base-policy-20050618"

DESCRIPTION="SELinux policy for sudo"

KEYWORDS="~x86 ~ppc ~sparc ~amd64 ~mips"

