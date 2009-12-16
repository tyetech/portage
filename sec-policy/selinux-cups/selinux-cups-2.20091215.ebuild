# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-cups/Attic/selinux-cups-2.20091215.ebuild,v 1.1 2009/12/16 02:53:52 pebenito Exp $

MODS="cups"
IUSE=""

inherit selinux-policy-2

DESCRIPTION="SELinux policy for cups - the Common Unix Printing System"

DEPEND="sec-policy/selinux-lpd"
RDEPEND="${DEPEND}"

KEYWORDS="~amd64 ~x86"
