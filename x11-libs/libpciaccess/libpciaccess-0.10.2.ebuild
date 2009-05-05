# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/libpciaccess/Attic/libpciaccess-0.10.2.ebuild,v 1.3 2009/05/05 07:23:48 ssuominen Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="Library providing generic access to the PCI bus and devices"
IUSE=""
LICENSE="MIT"
KEYWORDS="~amd64 ~x86"

CONFIGURE_OPTIONS="--with-pciids-path=/usr/share/misc"
