# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-sudo/Attic/selinux-sudo-20050716.ebuild,v 1.4 2007/07/11 02:56:47 mr_bones_ Exp $

inherit selinux-policy

TEFILES="sudo.te"
FCFILES="sudo.fc"
MACROS="sudo_macros.te"
IUSE=""
RDEPEND=">=sec-policy/selinux-base-policy-20050618"

DESCRIPTION="SELinux policy for sudo"

KEYWORDS="~alpha amd64 mips ppc sparc x86"
