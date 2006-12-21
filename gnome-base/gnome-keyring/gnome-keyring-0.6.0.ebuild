# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gnome-base/cvs-repo/gentoo-x86/gnome-base/gnome-keyring/Attic/gnome-keyring-0.6.0.ebuild,v 1.10 2006/12/21 12:38:14 corsair Exp $

inherit gnome2 eutils

DESCRIPTION="Password and keyring managing daemon"
HOMEPAGE="http://www.gnome.org/"

LICENSE="GPL-2 LGPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 ~arm ~hppa ~ia64 ~mips ppc ppc64 ~sh sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=dev-libs/glib-2.6
	>=x11-libs/gtk+-2.6"
DEPEND="${RDEPEND}
	sys-devel/gettext
	>=dev-util/pkgconfig-0.9"

DOCS="AUTHORS ChangeLog NEWS README TODO"

src_unpack() {
	gnome2_src_unpack

	epatch "${FILESDIR}/${P}-fbsd.patch"
}
