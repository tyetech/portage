# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-drivers/cvs-repo/gentoo-x86/x11-drivers/xf86-input-evdev/Attic/xf86-input-evdev-1.0.0.5.ebuild,v 1.1 2005/12/23 20:10:58 joshuabaergen Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="X.Org driver for evdev input devices"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
RDEPEND="x11-base/xorg-server"
DEPEND="${RDEPEND}
	x11-proto/inputproto
	x11-proto/randrproto
	x11-proto/xproto"
