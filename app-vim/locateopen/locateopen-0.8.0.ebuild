# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-vim/cvs-repo/gentoo-x86/app-vim/locateopen/Attic/locateopen-0.8.0.ebuild,v 1.5 2004/04/04 00:39:45 ciaranm Exp $

inherit vim-plugin

DESCRIPTION="vim plugin: open a file without supplying a path"
HOMEPAGE="http://vim.sourceforge.net/scripts/script.php?script_id=858"
LICENSE="vim"
KEYWORDS="sparc x86 alpha ia64 mips ~ppc"

RDEPEND="${RDEPEND} sys-apps/slocate"

