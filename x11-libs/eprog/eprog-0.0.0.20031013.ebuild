# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-libs/cvs-repo/gentoo-x86/x11-libs/eprog/Attic/eprog-0.0.0.20031013.ebuild,v 1.1 2003/10/14 02:46:03 vapier Exp $

inherit enlightenment

DESCRIPTION="convenience library for evas2"
HOMEPAGE="http://www.rephorm.com/rephorm/code/eprog/"

DEPEND="${DEPEND}
	virtual/x11
	>=x11-libs/evas-1.0.0.20031013_pre12
	>=x11-libs/ecore-1.0.0.20031013_pre4"
