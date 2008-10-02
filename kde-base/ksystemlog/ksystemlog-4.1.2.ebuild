# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ksystemlog/Attic/ksystemlog-4.1.2.ebuild,v 1.1 2008/10/02 10:13:20 jmbsvicetto Exp $

EAPI="2"

KMNAME=kdeadmin
KMMODULE=ksystemlog
inherit kde4-meta

DESCRIPTION="KSystemLog is a system log viewer for KDE."
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

# Tests fail (4.1.0).
RESTRICT="test"
