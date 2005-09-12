# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-screen/Attic/selinux-screen-20050821.ebuild,v 1.4 2005/09/12 19:35:02 spb Exp $

inherit selinux-policy

TEFILES="screen.te"
FCFILES="screen.fc"
MACROS="screen_macros.te"
IUSE=""

DESCRIPTION="SELinux policy for GNU Screen"

KEYWORDS="amd64 mips ppc sparc x86"
#KEYWORDS="~amd64 ~mips ~ppc ~sparc ~x86"
