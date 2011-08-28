# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-apm/Attic/selinux-apm-2.20110726.ebuild,v 1.1 2011/08/28 21:12:37 swift Exp $
EAPI="4"

IUSE=""
MODS="apm"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for apm"
KEYWORDS="~amd64 ~x86"
RDEPEND=">=sec-policy/selinux-base-policy-2.20110726-r1
	!<sec-policy/selinux-acpi-2.20110726"
