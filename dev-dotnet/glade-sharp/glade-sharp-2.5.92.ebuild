# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-dotnet/cvs-repo/gentoo-x86/dev-dotnet/glade-sharp/Attic/glade-sharp-2.5.92.ebuild,v 1.1 2005/10/16 06:53:52 latexer Exp $

inherit gtk-sharp-component

SLOT="2"
KEYWORDS="~x86 ~ppc ~amd64"
IUSE=""

DEPEND="${DEPEND} >=gnome-base/libglade-2.3.6"

GTK_SHARP_COMPONENT_SLOT="2"
GTK_SHARP_COMPONENT_SLOT_DEC="-2.0"
