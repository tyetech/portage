# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/drkonqi/Attic/drkonqi-4.1.2.ebuild,v 1.1 2008/10/02 06:29:01 jmbsvicetto Exp $

EAPI="2"

KMNAME=kdebase-runtime
inherit kde4-meta

DESCRIPTION="KDE crash handler, gives the user feedback if a program crashed"
IUSE="debug"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="sys-devel/gdb"
