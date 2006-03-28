# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apps/cvs-repo/gentoo-x86/www-apps/horde-imp/Attic/horde-imp-4.1.ebuild,v 1.5 2006/03/28 17:31:00 gustavoz Exp $

HORDE_PHP_FEATURES="imap"
HORDE_MAJ="-h3"
inherit horde

DESCRIPTION="Horde IMP provides webmail access to IMAP/POP3 mailboxes"

KEYWORDS="~alpha ~amd64 hppa ppc sparc x86"

DEPEND=""
RDEPEND=">=www-apps/horde-3"
