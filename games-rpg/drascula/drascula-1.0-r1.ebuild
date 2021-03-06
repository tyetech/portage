# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-rpg/cvs-repo/gentoo-x86/games-rpg/drascula/drascula-1.0-r1.ebuild,v 1.4 2011/03/14 11:21:01 tupone Exp $

EAPI=2
inherit eutils games

INT_URI="mirror://sourceforge/scummvm/drascula-int-${PV}.zip"
DAT_PV=0.13.1
AUD_PV=1.1
DESCRIPTION="Drascula: The Vampire Strikes Back"
HOMEPAGE="http://www.alcachofasoft.com/"
SRC_URI="mirror://sourceforge/scummvm/drascula-${PV}.zip
	http://scummvm.svn.sourceforge.net/svnroot/scummvm/scummvm/tags/release-0-13-1/dists/engine-data/drascula.dat -> drascula-${DAT_PV}.dat
	sound? ( mirror://sourceforge/scummvm/drascula-audio-${AUD_PV}.zip )
	linguas_es? ( ${INT_URI} )
	linguas_de? ( ${INT_URI} )
	linguas_fr? ( ${INT_URI} )
	linguas_it? ( ${INT_URI} )"

LICENSE="drascula"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="linguas_es linguas_de linguas_fr linguas_it +sound"
RESTRICT="mirror"

RDEPEND=">=games-engines/scummvm-0.13.1"
DEPEND="${RDEPEND}
	app-arch/unzip"

S=${WORKDIR}

src_unpack() {
	if use linguas_es || use linguas_de || use linguas_fr || use linguas_it; then
		unpack drascula-int-${PV}.zip
	fi
	if use sound; then
		unpack drascula-audio-${AUD_PV}.zip
	fi
	unpack drascula-${PV}.zip
}

src_install() {
	local lang

	games_make_wrapper ${PN} "scummvm -f -p \"${GAMES_DATADIR}/${PN}\" drascula" .
	for lang in es de fr it
	do
		if use linguas_${lang} ; then
			games_make_wrapper ${PN}-${lang} "scummvm -q ${lang} -f -p \"${GAMES_DATADIR}/${PN}\" drascula" .
			make_desktop_entry ${PN}-${lang} "Drascula: The Vampire Strikes Back (${lang})" ${PN}
		fi
	done
	insinto "${GAMES_DATADIR}"/${PN}
	doins P*.* || die "doins failed"
	newins "${DISTDIR}"/drascula-${DAT_PV}.dat drascula.dat || die "newins failed"
	if use sound; then
		doins audio/* || die "doins failed"
	fi
	dodoc readme.txt drascula.doc
	make_desktop_entry ${PN} "Drascula: The Vampire Strikes Back"
	prepgamesdirs
}
