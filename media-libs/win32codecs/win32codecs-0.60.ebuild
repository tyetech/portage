# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Maintainer: Martin Schlemmer <azarah@gentoo.org>, Donny Davies <woodchip@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/win32codecs/Attic/win32codecs-0.60.ebuild,v 1.1 2001/12/31 00:08:50 azarah Exp $

S=${WORKDIR}/w32codec-${PV}
DESCRIPTION="Win32 binary codecs for MPlayer and maybe avifile as well"
SRC_URI="ftp://ftp.mplayerhq.hu/MPlayer/releases/w32codec-${PV}.tar.bz2"
HOMEPAGE="http://www.mplayerhq.hu/"

DEPEND=""


src_install() {

	insinto /usr/lib/win32
	doins ${S}/*
}
