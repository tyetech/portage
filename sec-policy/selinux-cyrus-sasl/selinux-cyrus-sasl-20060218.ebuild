# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-cyrus-sasl/Attic/selinux-cyrus-sasl-20060218.ebuild,v 1.1 2006/02/18 16:34:53 kaiowas Exp $

inherit selinux-policy

TEFILES="saslauthd.te"
FCFILES="saslauthd.fc"
IUSE=""

DESCRIPTION="SELinux policy for cyrus-sasl"

KEYWORDS="~amd64 ~mips ~ppc ~sparc ~x86"

