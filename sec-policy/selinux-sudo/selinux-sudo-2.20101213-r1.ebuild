# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-sudo/Attic/selinux-sudo-2.20101213-r1.ebuild,v 1.1 2011/02/05 12:07:10 blueness Exp $

MODS="sudo"
IUSE=""

inherit selinux-policy-2

DESCRIPTION="SELinux policy for sudo"

KEYWORDS="~amd64 ~x86"

POLICY_PATCH="${FILESDIR}/fix-sudo.patch"
