# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-spamassassin/Attic/selinux-spamassassin-20041119.ebuild,v 1.1 2004/11/22 21:13:01 kaiowas Exp $

inherit selinux-policy

TEFILES="spamassassin.te spamc.te spamd.te"
FCFILES="spamassassin.fc spamc.fc spamd.fc"
MACROS="spamassassin_macros.te"
IUSE=""

DESCRIPTION="SELinux policy for SpamAssassin"

KEYWORDS="~x86 ~ppc ~sparc ~amd64"

