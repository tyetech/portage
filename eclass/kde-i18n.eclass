# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Dan Armak <danarmak@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/Attic/kde-i18n.eclass,v 1.6 2001/12/11 20:41:03 danarmak Exp $
inherit kde kde.org || die
ECLASS=kde-i18n

S=${WORKDIR}/${PN}
DESCRIPTION="KDE ${PV} - i18n: ${PN}"
HOMEPAGE="http://www.kde.org/"

need-kdelibs ${PV}

PROVIDE="virtual/kde-i18n-${PV}"

myconf=$"myconf --enable-final"
