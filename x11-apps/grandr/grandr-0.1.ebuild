# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/x11-apps/cvs-repo/gentoo-x86/x11-apps/grandr/grandr-0.1.ebuild,v 1.2 2007/09/07 19:34:32 wolf31o2 Exp $

# Must be before x-modular eclass is inherited
#SNAPSHOT="yes"

inherit x-modular

DESCRIPTION="GTK+-based tool to configure the X output using the RandR 1.2 extension"
KEYWORDS="~ppc x86"
LICENSE="MIT"
RDEPEND="=x11-libs/gtk+-2*
	>=x11-libs/libXrandr-1.2"
DEPEND="${RDEPEND}"
PATCHES="${FILESDIR}/${PV}-fix-license-display.patch
	${FILESDIR}/${PV}-outpus.patch
	${FILESDIR}/${PV}-fix-segfault-without-gconf-value.patch"

src_install() {
	x-modular_src_install
	dodoc NEWS
}
