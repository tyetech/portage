# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-dotnet/cvs-repo/gentoo-x86/dev-dotnet/gnomevfs-sharp/Attic/gnomevfs-sharp-1.9.3.1.ebuild,v 1.1 2005/05/13 01:10:05 latexer Exp $

inherit gtk-sharp-component

SLOT="2"
KEYWORDS="~x86 ~ppc"
IUSE=""

DEPEND="${DEPEND}
		>=gnome-base/gnome-vfs-2.0"

GTK_SHARP_COMPONENT_SLOT="2"
GTK_SHARP_COMPONENT_SLOT_DEC="-2.0"
