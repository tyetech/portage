# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/gst-plugins-gnomevfs/Attic/gst-plugins-gnomevfs-0.6.4.ebuild,v 1.8 2004/03/24 01:21:38 foser Exp $

inherit gst-plugins

KEYWORDS="x86 ppc sparc alpha hppa ~amd64 ia64 ~mips"
IUSE=""

DEPEND=">=gnome-base/gnome-vfs-2"

GST_PLUGINS_BUILD="gnome_vfs"
