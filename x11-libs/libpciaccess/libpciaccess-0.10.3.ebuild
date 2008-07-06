# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libpciaccess/Attic/libpciaccess-0.10.3.ebuild,v 1.2 2008/07/06 15:32:12 bluebird Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="Library providing generic access to the PCI bus and devices"
LICENSE="MIT"
KEYWORDS="~amd64 ~sparc ~x86"

CONFIGURE_OPTIONS="--with-pciids-path=/usr/share/misc"
