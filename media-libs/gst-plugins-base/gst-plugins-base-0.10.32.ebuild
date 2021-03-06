# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/gst-plugins-base/gst-plugins-base-0.10.32.ebuild,v 1.12 2012/05/05 08:02:30 jdhore Exp $

EAPI=1

# order is important, gnome2 after gst-plugins
inherit gst-plugins-base gst-plugins10 gnome2 flag-o-matic eutils
# libtool

DESCRIPTION="Basepack of plugins for gstreamer"
HOMEPAGE="http://gstreamer.freedesktop.org/"
SRC_URI="http://gstreamer.freedesktop.org/src/${PN}/${P}.tar.bz2"

LICENSE="GPL-2"
KEYWORDS="alpha amd64 arm hppa ia64 ~mips ppc ppc64 sh sparc x86 ~x86-fbsd ~x86-freebsd ~x86-interix ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~x64-solaris ~x86-solaris"
IUSE="+introspection nls +orc"

RDEPEND=">=dev-libs/glib-2.22
	>=media-libs/gstreamer-0.10.32
	dev-libs/libxml2
	app-text/iso-codes
	orc? ( >=dev-lang/orc-0.4.11 )
	!<media-libs/gst-plugins-bad-0.10.10"
DEPEND="${RDEPEND}
	nls? ( >=sys-devel/gettext-0.11.5 )
	virtual/pkgconfig"
	# Only if running eautoreconf: dev-util/gtk-doc-am

GST_PLUGINS_BUILD=""

DOCS="AUTHORS NEWS README RELEASE"

src_unpack() {
	gnome2_src_unpack
	epatch "$FILESDIR/${PN}-0.10.31-fix-tag-test-linking.patch"
	epatch "$FILESDIR/${P}-fix-tests-encodebin.patch"
}

src_compile() {
	# gst doesnt handle opts well, last tested with 0.10.15
	strip-flags
	replace-flags "-O3" "-O2"

	# Avoid sandbox violation with USE="introspection", bug #356283
	export GST_REGISTRY=${T}/registry.cache.xml

	gst-plugins-base_src_configure \
		$(use_enable introspection) \
		$(use_enable nls) \
		$(use_enable orc) \
		--disable-examples
	emake || die "emake failed."
}

src_install() {
	gnome2_src_install
}
