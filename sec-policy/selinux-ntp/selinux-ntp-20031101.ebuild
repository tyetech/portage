# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-ntp/Attic/selinux-ntp-20031101.ebuild,v 1.6 2005/01/20 09:29:41 kaiowas Exp $

TEFILES="ntpd.te"
FCFILES="ntpd.fc"
IUSE=""

inherit selinux-policy

DESCRIPTION="SELinux policy for the network time protocol daemon"

KEYWORDS="x86 ppc sparc amd64"

