# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-ntp/Attic/selinux-ntp-20031101.ebuild,v 1.5 2004/09/20 01:55:47 pebenito Exp $

TEFILES="ntpd.te"
FCFILES="ntpd.fc"
IUSE=""

inherit selinux-policy

DESCRIPTION="SELinux policy for the network time protocol daemon"

KEYWORDS="x86 ppc sparc amd64"

