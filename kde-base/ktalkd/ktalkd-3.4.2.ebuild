# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ktalkd/Attic/ktalkd-3.4.2.ebuild,v 1.1 2005/07/28 21:16:23 danarmak Exp $

KMNAME=kdenetwork
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE talk daemon"
KEYWORDS=" ~amd64 ~ppc ~ppc64 ~sparc ~x86"
IUSE=""
KMEXTRA="doc/kcontrol/kcmktalkd"