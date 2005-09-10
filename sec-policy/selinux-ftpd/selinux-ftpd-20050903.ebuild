# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-ftpd/Attic/selinux-ftpd-20050903.ebuild,v 1.1 2005/09/10 08:18:20 kaiowas Exp $

inherit selinux-policy

TEFILES="ftpd.te"
FCFILES="ftpd.fc"
IUSE=""
RDEPEND=">=sec-policy/selinux-base-policy-20050618"

DESCRIPTION="SELinux policy for ftp daemons"

KEYWORDS="~x86 ~ppc ~sparc ~amd64 ~mips"

