# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-denyhosts/Attic/selinux-denyhosts-2.20110726.ebuild,v 1.2 2012/01/29 11:23:08 swift Exp $
EAPI="4"

IUSE=""
MODS="denyhosts"
BASEPOL="2.20110726-r7"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for denyhosts"
KEYWORDS="amd64 x86"
