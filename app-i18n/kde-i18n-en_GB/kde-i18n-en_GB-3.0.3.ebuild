# Copyright 1999-2002 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/app-i18n/cvs-repo/gentoo-x86/app-i18n/kde-i18n-en_GB/Attic/kde-i18n-en_GB-3.0.3.ebuild,v 1.1 2002/08/20 09:51:35 danarmak Exp $

inherit kde-i18n

# override the kde-i18n.eclass function, which adds a patch needed
# for all kde-i18n ebuilds but this
src_unpack() {
	unpack ${A//kde-i18n-gentoo.patch}
}
