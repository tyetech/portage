# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/ktalkd/Attic/ktalkd-3.5_beta1.ebuild,v 1.2 2005/10/22 07:34:06 halcy0n Exp $

KMNAME=kdenetwork
MAXKDEVER=$PV
KM_DEPRANGE="$PV $MAXKDEVER"
inherit kde-meta eutils

DESCRIPTION="KDE talk daemon"
KEYWORDS="~amd64 ~x86"
IUSE=""
KMEXTRA="doc/kcontrol/kcmktalkd"