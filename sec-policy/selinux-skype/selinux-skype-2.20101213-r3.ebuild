# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-skype/Attic/selinux-skype-2.20101213-r3.ebuild,v 1.1 2011/08/07 11:01:56 blueness Exp $

IUSE=""

MODS="skype"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for general applications"

KEYWORDS="~amd64 ~x86"

POLICY_PATCH="${FILESDIR}/fix-apps-skype-r3.patch"
RDEPEND=">=sec-policy/selinux-base-policy-2.20101213-r20"
