# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Maintainer: William McArthur <sandymac@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/showimg/Attic/showimg-0.7.ebuild,v 1.5 2002/07/01 21:33:31 danarmak Exp $

inherit kde-base || die

need-kde 2.2

S=${WORKDIR}/${P}

LICENSE="GPL-2"
DESCRIPTION="ShowImg is a feature-rich image viewer for KDE"
SRC_URI="http://www.jalix.org/projects/showimg/download/${PVR}/${P}.tar.bz2"
HOMEPAGE="http://www.jalix.org/projects/showimg/"


