# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-gfx/cvs-repo/gentoo-x86/media-gfx/eclips/Attic/eclips-9999.ebuild,v 1.1 2005/03/30 01:01:35 vapier Exp $

ECVS_MODULE="misc/eclips"
inherit enlightenment

DESCRIPTION="Image viewer base on EFL"

DEPEND="x11-libs/ecore
	x11-libs/evas
	media-libs/imlib2
	net-misc/curl"
