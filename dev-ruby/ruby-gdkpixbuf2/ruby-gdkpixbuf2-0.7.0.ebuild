# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-gdkpixbuf2/Attic/ruby-gdkpixbuf2-0.7.0.ebuild,v 1.1 2003/10/31 03:21:18 agriffis Exp $

inherit ruby-gnome2

DESCRIPTION="Ruby GdkPixbuf2 bindings"
KEYWORDS="~alpha ~x86"
DEPEND="${DEPEND} >=media-libs/gdk-pixbuf-0.21.0"
RDEPEND="${RDEPEND} >=media-libs/gdk-pixbuf-0.21.0 >=dev-ruby/ruby-glib2-${PV}"
