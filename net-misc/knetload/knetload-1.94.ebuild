# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/knetload/Attic/knetload-1.94.ebuild,v 1.12 2004/03/14 17:27:29 mr_bones_ Exp $

inherit kde

need-kde 3

KEYWORDS="x86 sparc "
LICENSE="GPL-2"
DESCRIPTION="A Network applet for KDE2"
SRC_URI="http://ftp.kde.com/Computer_Devices/Networking/Monitoring/KNETLoad/${PN}-1.9.4.tar.gz
	http://kde.quakenet.eu.org/files/${PN}-1.9.4.tar.gz"
HOMEPAGE="http://kde.quakenet.eu.org/knetload.shtml"
S=${WORKDIR}/${PN}-1.9.4

