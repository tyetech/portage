# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-dotnet/cvs-repo/gentoo-x86/dev-dotnet/gda-sharp/Attic/gda-sharp-1.0.4.ebuild,v 1.4 2005/02/07 19:30:31 dholm Exp $

inherit gtk-sharp-component

SLOT="1"
KEYWORDS="~x86 ~ppc"
IUSE=""

DEPEND="${DEPEND}
		>=dev-dotnet/gtk-sharp-1.0.4-r1
		>=gnome-extra/libgda-1.0.0"
