# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/libkdeedu/Attic/libkdeedu-4.0.1.ebuild,v 1.2 2008/03/04 03:31:49 jer Exp $

EAPI="1"

KMNAME=kdeedu
inherit kde4-meta

# get weird "Exception: Other". broken.
RESTRICT="test"

DESCRIPTION="common library for kde educational apps."
KEYWORDS="~amd64 ~hppa ~x86"
IUSE="debug"
