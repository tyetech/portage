# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# Christian Hubinger <a9806056@unet.univie.ac.at>
# $Header: /usr/local/ssd/gentoo-x86/output/net-firewall/cvs-repo/gentoo-x86/net-firewall/kmyfirewall/Attic/kmyfirewall-0.9.4.ebuild,v 1.1 2003/03/26 15:28:16 mholzer Exp $
inherit kde-base
need-kde 3

DESCRIPTION="Graphical KDE iptables configuration tool"
SRC_URI="mirror://sourceforge/$PN/$P.tar.bz2"
HOMEPAGE="http://kmyfirewall.sourceforge.net/"

LICENSE="GPL-2"
KEYWORDS="~x86"

S="$WORKDIR/$P-r1" # no idea why
