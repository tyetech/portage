# Copyright 2006-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-djbdns/Attic/selinux-djbdns-20080525.ebuild,v 1.1 2008/05/25 23:49:32 pebenito Exp $

MODS="djbdns"
IUSE=""

inherit selinux-policy-2

RDEPEND="sec-policy/selinux-ucspi-tcp
	sec-policy/selinux-daemontools"

DESCRIPTION="SELinux policy for djbdns"

KEYWORDS="~alpha ~amd64 ~mips ~ppc ~sparc ~x86"
