# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-mysql/Attic/selinux-mysql-20051122.ebuild,v 1.1 2005/11/28 09:07:19 kaiowas Exp $

inherit selinux-policy

TEFILES="mysqld.te"
FCFILES="mysqld.fc"
IUSE=""
RDEPEND=">=sec-policy/selinux-base-policy-20050224"

DESCRIPTION="SELinux policy for mysql"

KEYWORDS="~amd64 ~mips ~ppc ~sparc ~x86"

