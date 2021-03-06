# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-sound/cvs-repo/gentoo-x86/media-sound/gmusicbrowser/gmusicbrowser-1.1.9.1_pre20120526.ebuild,v 1.4 2012/09/10 07:39:55 hasufell Exp $

EAPI=4

inherit eutils fdo-mime gnome2-utils vcs-snapshot

DESCRIPTION="An open-source jukebox for large collections of mp3/ogg/flac files"
HOMEPAGE="http://gmusicbrowser.org/"
SRC_URI="https://github.com/squentin/${PN}/tarball/3293bcbf09dce933b991a98cd5bfc333477e42a8
	-> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

GSTREAMER_DEPEND="
	dev-perl/GStreamer
	dev-perl/GStreamer-Interfaces
	media-plugins/gst-plugins-meta"
MPLAYER_DEPEND="
	|| ( media-video/mplayer media-video/mplayer2 )"
OTHER_DEPEND="
	media-sound/alsa-utils
	media-sound/flac123
	|| ( media-sound/mpg123 media-sound/mpg321 )
	media-sound/vorbis-tools"

RDEPEND="dev-lang/perl
	dev-perl/gtk2-perl
	virtual/perl-MIME-Base64
	|| ( net-misc/wget dev-perl/AnyEvent-HTTP )
	|| (
		( ${GSTREAMER_DEPEND} )
		( ${MPLAYER_DEPEND} )
		( ${OTHER_DEPEND} )
	)"
DEPEND="sys-devel/gettext"

LANGS="cs de es fr hu it ko nl pl pt pt_BR ru sv zh_CN"
for l in ${LANGS}; do
	IUSE="$IUSE linguas_${l}"
done
unset l

src_prepare() {
	sed -i \
		-e '/menudir/d' \
		-e '/^LINGUAS=/d' \
		Makefile || die

	strip-linguas ${LANGS}
}

src_install() {
	emake \
		DOCS="AUTHORS NEWS README" \
		DESTDIR="${D}" \
		iconsdir="${D}/usr/share/icons/hicolor/32x32/apps" \
		liconsdir="${D}/usr/share/icons/hicolor/48x48/apps" \
		miconsdir="${D}/usr/share/pixmaps" \
		install

	dohtml layout_doc.html
}

pkg_preinst() {
	gnome2_icon_savelist
}

pkg_postinst() {
	fdo-mime_desktop_database_update
	gnome2_icon_cache_update

	elog "Gmusicbrowser supports gstreamer, mplayer and mpg123/ogg123..."
	elog "for audio playback. Needed dependencies:"
	elog "Gstreamer: ${GSTREAMER_DEPEND}"
	elog "mplayer: ${MPLAYER_DEPEND}"
	elog "mpg123/ogg123...: ${OTHER_DEPEND}"
	elog
	elog "This ebuild just ensures at least one implementation is installed!"
	elog
	elog "other optional dependencies:"
	elog "	dev-perl/Net-DBus (for dbus support and mpris1/2 plugins)"
	elog "	dev-perl/Gtk2-WebKit (for Web context plugin)"
	elog "	dev-perl/Gtk2-Notify (for Notify plugin)"
	elog "	dev-perl/gnome2-wnck (for Titlebar plugin)"
}

pkg_postrm() {
	fdo-mime_desktop_database_update
	gnome2_icon_cache_update
}
