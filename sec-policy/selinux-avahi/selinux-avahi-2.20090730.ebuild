# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-avahi/Attic/selinux-avahi-2.20090730.ebuild,v 1.1 2009/08/05 13:35:15 pebenito Exp $

IUSE=""

MODS="avahi"

RDEPEND="sec-policy/selinux-dbus"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for avahi"

KEYWORDS="~amd64 ~x86"
