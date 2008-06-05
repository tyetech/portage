# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdessh/Attic/kdessh-4.0.5.ebuild,v 1.1 2008/06/05 21:38:06 keytoaster Exp $

EAPI="1"

KMNAME=kdeutils
inherit kde4-meta

DESCRIPTION="KDE frontend to ssh"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="virtual/ssh"
