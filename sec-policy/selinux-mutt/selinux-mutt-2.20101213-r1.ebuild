# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-mutt/Attic/selinux-mutt-2.20101213-r1.ebuild,v 1.1 2011/02/05 20:41:03 blueness Exp $

IUSE=""

MODS="mutt"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for general applications"

KEYWORDS="~amd64 ~x86"

POLICY_PATCH="${FILESDIR}/add-apps-mutt-r1.patch"
