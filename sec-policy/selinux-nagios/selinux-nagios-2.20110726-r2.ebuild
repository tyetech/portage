# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-nagios/Attic/selinux-nagios-2.20110726-r2.ebuild,v 1.1 2011/11/15 10:46:42 swift Exp $
EAPI="4"

IUSE=""
MODS="nagios"
BASEPOL="2.20110726-r6"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for nagios"

KEYWORDS="~amd64 ~x86"
