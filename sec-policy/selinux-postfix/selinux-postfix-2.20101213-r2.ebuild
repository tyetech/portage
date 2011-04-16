# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-postfix/Attic/selinux-postfix-2.20101213-r2.ebuild,v 1.1 2011/04/16 13:40:20 blueness Exp $

MODS="postfix"
IUSE=""

inherit selinux-policy-2

DESCRIPTION="SELinux policy for postfix"

KEYWORDS="~amd64 ~x86"

POLICY_PATCH="${FILESDIR}/fix-services-postfix-r2.patch"
