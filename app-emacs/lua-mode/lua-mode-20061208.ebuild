# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-emacs/cvs-repo/gentoo-x86/app-emacs/lua-mode/Attic/lua-mode-20061208.ebuild,v 1.6 2007/11/14 22:29:46 ulm Exp $

inherit elisp

DESCRIPTION="An Emacs major mode for editing Lua scripts"
HOMEPAGE="http://lua-users.org/wiki/LuaEditorSupport"
SRC_URI="http://luaforge.net/frs/download.php/2074/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc x86"
IUSE=""

SITEFILE="70${PN}-gentoo.el"

S="${WORKDIR}"
