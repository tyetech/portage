# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/grilo-plugins/grilo-plugins-0.2.0.ebuild,v 1.1 2012/09/16 02:50:33 tetromino Exp $

EAPI="4"
GCONF_DEBUG="no" # --enable-debug only changes CFLAGS
GNOME2_LA_PUNT="yes"

inherit gnome2

DESCRIPTION="A framework for easy media discovery and browsing"
HOMEPAGE="https://live.gnome.org/Grilo"

LICENSE="LGPL-2.1"
SLOT="0.2"
KEYWORDS="~amd64 ~x86"
IUSE="+dvd tracker upnp +vimeo +youtube"

# TODO: Blip.TV (requires librest)
RDEPEND="
	>=dev-libs/glib-2.28:2
	~media-libs/grilo-${PV}:${SLOT}[network]

	dev-libs/gmime:2.6
	dev-libs/libxml2:2
	dev-db/sqlite:3

	dvd? ( >=dev-libs/totem-pl-parser-3.4.1 )
	tracker? ( >=app-misc/tracker-0.10.5 )
	youtube? ( >=dev-libs/libgdata-0.7
		>=media-libs/libquvi-0.4.0 )
	upnp? ( >=net-libs/gupnp-0.13
		>=net-libs/gupnp-av-0.5 )
	vimeo? ( net-libs/libsoup:2.4
		dev-libs/libgcrypt )"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

# `make check` doesn't do anything, and ${S}/test/test fails without all plugins
RESTRICT="test"

pkg_setup() {
	DOCS="AUTHORS NEWS README"
	# --enable-debug only changes CFLAGS, useless for us
	G2CONF="${G2CONF}
		--disable-static
		--disable-debug
		--disable-uninstalled"

	# Plugins
	# TODO: Enable Blip.TV support (requires librest)
	# shoutcast seems to be broken
	G2CONF="${G2CONF}
		--disable-bliptv
		--enable-apple-trailers
		--enable-bookmarks
		--enable-filesystem
		--enable-flickr
		--enable-gravatar
		--enable-jamendo
		--enable-lastfm-albumart
		--enable-localmetadata
		--enable-metadata-store
		--enable-podcasts
		--disable-shoutcast
		$(use_enable dvd optical-media)
		$(use_enable tracker)
		$(use_enable upnp)
		$(use_enable vimeo)
		$(use_enable youtube)"
}

src_prepare() {
	sed -i -e 's/^\(SUBDIRS .*\)test/\1/g' Makefile.*

	gnome2_src_prepare
}
