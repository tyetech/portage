# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-apps/cvs-repo/gentoo-x86/www-apps/horde-imp/Attic/horde-imp-4.1.3.ebuild,v 1.3 2006/09/26 03:54:57 weeve Exp $

HORDE_PHP_FEATURES="imap"
HORDE_MAJ="-h3"
inherit horde

DESCRIPTION="Horde IMP provides webmail access to IMAP/POP3 mailboxes"

KEYWORDS="~alpha ~amd64 ~hppa ppc sparc ~x86"
IUSE="crypt"

DEPEND=""
RDEPEND=">=www-apps/horde-3
	crypt? ( app-crypt/gnupg )"
