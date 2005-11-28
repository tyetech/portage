# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-postfix/Attic/selinux-postfix-20051122.ebuild,v 1.1 2005/11/28 09:20:05 kaiowas Exp $

inherit selinux-policy

TEFILES="postfix.te"
FCFILES="postfix.fc"
IUSE=""
RDEPEND=">=sec-policy/selinux-base-policy-20050618"

DESCRIPTION="SELinux policy for postfix"

KEYWORDS="~amd64 ~mips ~ppc ~sparc ~x86"

