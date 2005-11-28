# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-publicfile/Attic/selinux-publicfile-20051124.ebuild,v 1.1 2005/11/28 09:22:02 kaiowas Exp $

inherit selinux-policy

TEFILES="publicfile.te"
FCFILES="publicfile.fc"
IUSE=""

RDEPEND="sec-policy/selinux-ucspi-tcp"

DESCRIPTION="SELinux policy for publicfile"

KEYWORDS="~amd64 ~mips ~ppc ~sparc ~x86"

