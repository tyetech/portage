# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-portmap/Attic/selinux-portmap-20030811.ebuild,v 1.7 2007/07/11 02:56:48 mr_bones_ Exp $

TEFILES="portmap.te"
FCFILES="portmap.fc"
IUSE=""

inherit selinux-policy

DESCRIPTION="SELinux policy for portmap"

KEYWORDS="amd64 ~mips ppc sparc x86"
