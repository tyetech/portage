# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Clipboard/Attic/Clipboard-0.09.ebuild,v 1.4 2009/09/25 17:14:41 volkmar Exp $

EAPI=2

MODULE_AUTHOR=KING
inherit perl-module

DESCRIPTION="Copy and paste with any OS"

SLOT="0"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND="x11-misc/xclip
	dev-perl/Spiffy"
