# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdessh/Attic/kdessh-4.1.2.ebuild,v 1.1 2008/10/02 08:19:14 jmbsvicetto Exp $

EAPI="2"

KMNAME=kdeutils
inherit kde4-meta

DESCRIPTION="KDE frontend to ssh"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RDEPEND="virtual/ssh"
