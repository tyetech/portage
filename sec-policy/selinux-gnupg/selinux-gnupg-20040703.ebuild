# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-gnupg/Attic/selinux-gnupg-20040703.ebuild,v 1.2 2004/09/20 01:55:47 pebenito Exp $

TEFILES="gpg.te"
FCFILES="gpg.fc"
MACROS="gpg_macros.te"
IUSE=""

inherit selinux-policy

DESCRIPTION="SELinux policy for GNU privacy guard"

KEYWORDS="x86 ppc sparc amd64"

