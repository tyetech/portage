# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kgpg/Attic/kgpg-4.0.0.ebuild,v 1.1 2008/01/18 00:01:34 philantrop Exp $

EAPI="1"

KMNAME=kdeutils
inherit kde4-meta

DESCRIPTION="KDE gpg keyring manager"
KEYWORDS="~amd64 ~x86"
IUSE="debug htmlhandbook"

RDEPEND="${RDEPEND} app-crypt/gnupg"
