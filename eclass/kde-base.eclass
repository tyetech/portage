# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/Attic/kde-base.eclass,v 1.21 2003/02/18 09:00:45 carpaski Exp $
#
# Author Dan Armak <danarmak@gentoo.org>
#
# This is the kde ebuild for std. kde-dependant apps which follow configure/make/make install
# procedures and have std. configure options.

inherit kde
ECLASS=kde-base
INHERITED="$INHERITED $ECLASS"

newdepend /c

[ -z "$DESCRIPTION" ] && DESCRIPTION="Based on the $ECLASS eclass"
HOMEPAGE="http://apps.kde.com/"
