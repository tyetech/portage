# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apps/cvs-repo/gentoo-x86/www-apps/horde-chora/Attic/horde-chora-2.0.ebuild,v 1.1 2004/12/24 07:58:39 vapier Exp $

HORDE_MAJ="-h3"
inherit horde

DESCRIPTION="Chora is the Horde CVS viewer"

KEYWORDS="~alpha ~amd64 ~hppa ~ppc ~sparc ~x86"

DEPEND=""
RDEPEND=">=www-apps/horde-3
	>=app-text/rcs-5.7-r1
	>=dev-util/cvs-1.11.2"
