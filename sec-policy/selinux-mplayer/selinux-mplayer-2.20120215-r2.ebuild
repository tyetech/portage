# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-mplayer/selinux-mplayer-2.20120215-r2.ebuild,v 1.1 2012/06/27 20:34:02 swift Exp $
EAPI="4"

IUSE=""
MODS="mplayer"
BASEPOL="2.20120215-r13"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for mplayer"

KEYWORDS="~amd64 ~x86"
