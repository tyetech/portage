# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kwordquiz/Attic/kwordquiz-4.1.4.ebuild,v 1.1 2009/01/13 23:10:06 alexxy Exp $

EAPI="2"

KMNAME=kdeedu
inherit kde4-meta

DESCRIPTION="KDE: A powerful flashcard and vocabulary learning program"
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug htmlhandbook"

COMMONDEPEND=">=kde-base/libkdeedu-${PV}:${SLOT}"
DEPEND="${COMMONDEPEND}"
RDEPEND="${COMMONDEPEND}"

KMEXTRACTONLY="libkdeedu/keduvocdocument"
