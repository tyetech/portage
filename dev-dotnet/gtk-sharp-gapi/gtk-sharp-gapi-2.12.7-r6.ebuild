# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-dotnet/cvs-repo/gentoo-x86/dev-dotnet/gtk-sharp-gapi/Attic/gtk-sharp-gapi-2.12.7-r6.ebuild,v 1.1 2009/01/05 20:51:59 loki_val Exp $

EAPI=2

GTK_SHARP_MODULE_DIR=parser

inherit gtk-sharp-module

SLOT="2"
KEYWORDS="~amd64 ~ppc ~x86 ~x86-fbsd"
IUSE=""

RESTRICT="test"

src_compile() {
	gtk-sharp-module_src_compile
	GTK_SHARP_MODULE_DIR="../generator" gtk-sharp-module_src_compile
}

src_install() {
	local exec
	gtk-sharp-module_src_install
	GTK_SHARP_MODULE_DIR="../generator" gtk-sharp-module_src_install
}
