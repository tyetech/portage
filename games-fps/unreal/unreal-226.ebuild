# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-fps/cvs-repo/gentoo-x86/games-fps/unreal/unreal-226.ebuild,v 1.18 2012/02/05 06:11:56 vapier Exp $

inherit eutils unpacker cdrom games

DESCRIPTION="Futuristic FPS (a hack that runs on top of Unreal Tournament)"
HOMEPAGE="http://www.unreal.com/ http://icculus.org/~chunky/ut/unreal/"
SRC_URI="http://www.icculus.org/%7Echunky/ut/unreal/unreali-install.run
	ftp://ftp.lokigames.com/pub/patches/ut/ut-install-436.run
	ftp://ftp.lokigames.com/pub/patches/ut/IpDrv-436-Linux-08-20-02.zip"

LICENSE="as-is"
SLOT="0"
KEYWORDS="-* x86"
IUSE="X opengl"

DEPEND="sys-libs/lib-compat
	app-arch/unzip"
RDEPEND="!amd64? (
	x11-libs/libXext
	x11-libs/libX11
	x11-libs/libXau
	x11-libs/libXdmcp
	=media-libs/libsdl-1.2*
	opengl? ( virtual/opengl ) )
	amd64? ( app-emulation/emul-linux-x86-sdl
		app-emulation/emul-linux-x86-baselibs
		app-emulation/emul-linux-x86-xlibs )"

S=${WORKDIR}

src_unpack() {
	export CDROM_NAME_1="Unreal CD"
	export CDROM_NAME_2="Unreal Tournament CD"
	cdrom_get_cds System/Unreal.ini System/UnrealTournament.ini
	unpack_makeself unreali-install.run
	mkdir ut
	cd ut
	unpack_makeself ut-install-436.run
	unpack IpDrv-436-Linux-08-20-02.zip
}

src_install() {
	local dir=${GAMES_PREFIX_OPT}/unreal
	dodir "${dir}"

	tar -zxf ut/data.tar.gz -C "${D}/${dir}"
	tar -zxf ut/OpenGL.ini.tar.gz -C "${D}/${dir}"
	tar -zxf System.tar.gz -C "${D}/${dir}"
	insinto "${dir}"/System
	doins ut/IpDrv.so

	cp -rf "${CDROM_ROOT}"/{Maps,Music,Sounds} "${D}/${dir}/"
	for f in "${D}/${dir}"/Maps/Dm*.unr ; do
		mv "${f}" "${f/Dm/DM-}"
	done
	dosym Maps "${dir}"/maps

	if has_version '<games-fps/unreal-tournament-451' \
		|| has_version '<games-fps/unreal-tournament-goty-451' ; then
		CDROM_ROOT="${GAMES_PREFIX_OPT}/unreal-tournament"
	else
		cdrom_load_next_cd
	fi
	insinto "${dir}"/Textures
	doins "${CDROM_ROOT}"/Textures/*.utx
	insinto "${dir}"/Sounds
	doins "${CDROM_ROOT}"/Sounds/*.uax
	insinto "${dir}"/System
	doins "${CDROM_ROOT}"/System/*.u
	insinto "${dir}"/Music
	doins "${CDROM_ROOT}"/Music/*.umx

	insinto "${dir}"
	doins icon.* README*

	exeinto "${dir}"
	doexe bin/x86/unreal

	games_make_wrapper unreal ./unreal "${dir}" "${dir}"

	prepgamesdirs
}
