# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/xmms-echo/Attic/xmms-echo-1.2.10.ebuild,v 1.5 2005/09/14 05:57:22 agriffis Exp $

IUSE=""
SLOT="0"
KEYWORDS="alpha amd64 ~arm ~hppa ia64 ~mips ~ppc ~ppc64 sparc x86"

DEPEND=">=media-sound/xmms-1.2.10"

PLUGIN_PATH="Effect/echo_plugin"

M4_VER="1.1"

inherit xmms-plugin
