# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-sasl/Attic/selinux-sasl-2.20101213-r1.ebuild,v 1.1 2011/03/07 03:11:08 blueness Exp $

MODS="sasl"
IUSE=""

inherit selinux-policy-2

DESCRIPTION="SELinux policy for sasl"

KEYWORDS="~amd64 ~x86"

POLICY_PATCH="${FILESDIR}/fix-services-sasl-r1.patch"
