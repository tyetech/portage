# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-misc/cvs-repo/gentoo-x86/app-misc/kcpuload/Attic/kcpuload-1.9.1.ebuild,v 1.4 2002/07/25 17:20:02 seemant Exp $

inherit kde-base || die

need-kde 3

DESCRIPTION="A CPU applet for KDE3"
SRC_URI="http://ftp.kde.com/Administration/Monitoring/Resources/KCPULoad/${P}.tar.gz"
HOMEPAGE="http://ftp.kde.com/Administration/Monitoring/Resources/KCPULoad/"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="x86"
