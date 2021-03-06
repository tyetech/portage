# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/qt4-build.eclass,v 1.137 2012/10/04 03:52:35 pesa Exp $

# @ECLASS: qt4-build.eclass
# @MAINTAINER:
# Qt herd <qt@gentoo.org>
# @BLURB: Eclass for Qt4 split ebuilds.
# @DESCRIPTION:
# This eclass contains various functions that are used when building Qt4.

case ${EAPI} in
	2|3|4|5) : ;;
	*)	 die "qt4-build.eclass: unsupported EAPI=${EAPI:-0}" ;;
esac

inherit eutils flag-o-matic multilib toolchain-funcs versionator

if [[ ${PV} == *9999* ]]; then
	QT4_BUILD_TYPE="live"
	inherit git-2
else
	QT4_BUILD_TYPE="release"
fi

HOMEPAGE="http://qt-project.org/ http://qt.nokia.com/"
LICENSE="|| ( LGPL-2.1 GPL-3 )"

MY_PV=${PV/_/-}
MY_P=qt-everywhere-opensource-src-${MY_PV}

case ${QT4_BUILD_TYPE} in
	live)
		EGIT_REPO_URI="git://gitorious.org/qt/qt.git
			https://git.gitorious.org/qt/qt.git"
		EGIT_BRANCH=${PV%.9999}
		;;
	release)
		if version_is_at_least 4.8.1; then
			SRC_URI="http://releases.qt-project.org/qt4/source/${MY_P}.tar.gz"
		else
			SRC_URI="http://get.qt.nokia.com/qt/source/${MY_P}.tar.gz"
		fi
		;;
esac

IUSE="aqua debug pch"
[[ ${CATEGORY}/${PN} != x11-libs/qt-xmlpatterns ]] && IUSE+=" +exceptions"
if version_is_at_least 4.8; then
	[[ ${CATEGORY}/${PN} != x11-libs/qt-webkit ]] && IUSE+=" c++0x"
	version_is_at_least 4.8.3 || IUSE+=" qpa"
fi

DEPEND="virtual/pkgconfig"
if [[ ${QT4_BUILD_TYPE} == live ]]; then
	DEPEND+=" dev-lang/perl"
fi

RDEPEND="
	!<x11-libs/qt-assistant-${PV}:4
	!>x11-libs/qt-assistant-${PV}-r9999:4
	!<x11-libs/qt-bearer-${PV}:4
	!>x11-libs/qt-bearer-${PV}-r9999:4
	!<x11-libs/qt-core-${PV}:4
	!>x11-libs/qt-core-${PV}-r9999:4
	!<x11-libs/qt-dbus-${PV}:4
	!>x11-libs/qt-dbus-${PV}-r9999:4
	!<x11-libs/qt-declarative-${PV}:4
	!>x11-libs/qt-declarative-${PV}-r9999:4
	!<x11-libs/qt-demo-${PV}:4
	!>x11-libs/qt-demo-${PV}-r9999:4
	!<x11-libs/qt-gui-${PV}:4
	!>x11-libs/qt-gui-${PV}-r9999:4
	!<x11-libs/qt-multimedia-${PV}:4
	!>x11-libs/qt-multimedia-${PV}-r9999:4
	!<x11-libs/qt-opengl-${PV}:4
	!>x11-libs/qt-opengl-${PV}-r9999:4
	!<x11-libs/qt-openvg-${PV}:4
	!>x11-libs/qt-openvg-${PV}-r9999:4
	!<x11-libs/qt-phonon-${PV}:4
	!>x11-libs/qt-phonon-${PV}-r9999:4
	!<x11-libs/qt-qt3support-${PV}:4
	!>x11-libs/qt-qt3support-${PV}-r9999:4
	!<x11-libs/qt-script-${PV}:4
	!>x11-libs/qt-script-${PV}-r9999:4
	!<x11-libs/qt-sql-${PV}:4
	!>x11-libs/qt-sql-${PV}-r9999:4
	!<x11-libs/qt-svg-${PV}:4
	!>x11-libs/qt-svg-${PV}-r9999:4
	!<x11-libs/qt-test-${PV}:4
	!>x11-libs/qt-test-${PV}-r9999:4
	!<x11-libs/qt-webkit-${PV}:4
	!>x11-libs/qt-webkit-${PV}-r9999:4
	!<x11-libs/qt-xmlpatterns-${PV}:4
	!>x11-libs/qt-xmlpatterns-${PV}-r9999:4
"

S=${WORKDIR}/${MY_P}

# @FUNCTION: qt4-build_pkg_setup
# @DESCRIPTION:
# Sets up PATH and LD_LIBRARY_PATH.
qt4-build_pkg_setup() {
	[[ ${EAPI} == 2 ]] && use !prefix && EPREFIX=

	# Protect users by not allowing downgrades between releases.
	# Downgrading revisions within the same release should be allowed.
	if has_version ">${CATEGORY}/${P}-r9999:4"; then
		if [[ -z ${I_KNOW_WHAT_I_AM_DOING} ]]; then
			eerror "    ***  Sanity check to keep you from breaking your system  ***"
			eerror "Downgrading Qt is completely unsupported and will break your system!"
			die "aborting to save your system"
		else
			ewarn "Downgrading Qt is completely unsupported and will break your system!"
		fi
	fi

	PATH="${S}/bin${PATH:+:}${PATH}"
	if [[ ${CHOST} != *-darwin* ]]; then
		LD_LIBRARY_PATH="${S}/lib${LD_LIBRARY_PATH:+:}${LD_LIBRARY_PATH}"
	else
		DYLD_LIBRARY_PATH="${S}/lib${DYLD_LIBRARY_PATH:+:}${DYLD_LIBRARY_PATH}"
		# On MacOS we *need* at least src/gui/kernel/qapplication_mac.mm for
		# platform detection. Note: needs to come before any directories to
		# avoid extract failure.
		[[ ${CHOST} == *-apple-darwin* ]] && \
			QT4_EXTRACT_DIRECTORIES="src/gui/kernel/qapplication_mac.mm
				${QT4_EXTRACT_DIRECTORIES}"
	fi
}

# @ECLASS-VARIABLE: QT4_EXTRACT_DIRECTORIES
# @DEFAULT_UNSET
# @DESCRIPTION:
# Space-separated list including the directories that will be extracted from
# Qt tarball.

# @ECLASS-VARIABLE: QT4_TARGET_DIRECTORIES
# @DEFAULT_UNSET
# @DESCRIPTION:
# Arguments for build_target_directories. Takes the directories in which the
# code should be compiled. This is a space-separated list.

# @FUNCTION: qt4-build_src_unpack
# @DESCRIPTION:
# Unpacks the sources.
qt4-build_src_unpack() {
	setqtenv

	if ! version_is_at_least 4.1 $(gcc-version); then
		ewarn "Using a GCC version lower than 4.1 is not supported."
	fi

	if [[ ${PN} == qt-webkit ]]; then
		eshopts_push -s extglob
		if is-flagq '-g?(gdb)?([1-9])'; then
			echo
			ewarn "You have enabled debug info (probably have -g or -ggdb in your CFLAGS/CXXFLAGS)."
			ewarn "You may experience really long compilation times and/or increased memory usage."
			ewarn "If compilation fails, please try removing -g/-ggdb before reporting a bug."
			ewarn "For more info check out https://bugs.gentoo.org/307861"
			echo
		fi
		eshopts_pop
	fi

	case ${QT4_BUILD_TYPE} in
		live)
			git-2_src_unpack
			;;
		release)
			local tarball="${MY_P}.tar.gz" target= targets=
			for target in configure LICENSE.GPL3 LICENSE.LGPL projects.pro \
				src/{qbase,qt_targets,qt_install}.pri bin config.tests \
				mkspecs qmake ${QT4_EXTRACT_DIRECTORIES}
			do
				targets+="${MY_P}/${target} "
			done

			ebegin "Unpacking parts of ${tarball}:" ${targets//${MY_P}\/}
			tar -xzf "${DISTDIR}/${tarball}" ${targets}
			eend $? || die "failed to unpack"
			;;
	esac
}

# @ECLASS-VARIABLE: PATCHES
# @DEFAULT_UNSET
# @DESCRIPTION:
# PATCHES array variable containing all various patches to be applied.
# This variable is expected to be defined in global scope of ebuild.
# Make sure to specify the full path. This variable is utilised in
# src_unpack/src_prepare phase, based on EAPI.
#
# @CODE
#   PATCHES=( "${FILESDIR}/mypatch.patch"
#             "${FILESDIR}/patches_folder/" )
# @CODE

# @FUNCTION: qt4-build_src_prepare
# @DESCRIPTION:
# Prepare the sources before the configure phase. Strip CFLAGS if necessary, and fix
# the build system in order to respect CFLAGS/CXXFLAGS/LDFLAGS specified in /etc/make.conf.
qt4-build_src_prepare() {
	setqtenv

	if [[ ${QT4_BUILD_TYPE} == live ]]; then
		QTDIR="." ./bin/syncqt || die "syncqt failed"
	fi

	if version_is_at_least 4.7; then
		# avoid X11 dependency in non-gui packages
		local nolibx11_pkgs="qt-core qt-dbus qt-script qt-sql qt-test qt-xmlpatterns"
		has ${PN} ${nolibx11_pkgs} && qt_nolibx11
	fi

	if use aqua; then
		# provide a proper macx-g++-64
		use x64-macos && ln -s macx-g++ mkspecs/$(qt_mkspecs_dir)

		sed -e '/^CONFIG/s:app_bundle::' \
			-e '/^CONFIG/s:plugin_no_soname:plugin_with_soname absolute_library_soname:' \
			-i mkspecs/$(qt_mkspecs_dir)/qmake.conf || die
	fi

	if [[ ${PN} != qt-core ]]; then
		skip_qmake_build
		skip_project_generation
		symlink_binaries_to_buildtree
	fi

	if [[ ${CHOST} == *86*-apple-darwin* ]]; then
		# qmake bus errors with -O2 or -O3 but -O1 works
		# Bug 373061
		replace-flags -O[23] -O1
	fi

	# Bug 178652
	if [[ $(gcc-major-version) == 3 ]] && use amd64; then
		ewarn "Appending -fno-gcse to CFLAGS/CXXFLAGS"
		append-flags -fno-gcse
	fi

	if use_if_iuse c++0x; then
		append-cxxflags -std=c++0x
	fi

	# Unsupported old gcc versions - hardened needs this :(
	if [[ $(gcc-major-version) -lt 4 ]]; then
		ewarn "Appending -fno-stack-protector to CXXFLAGS"
		append-cxxflags -fno-stack-protector
		# Bug 253127
		sed -e "/^QMAKE_CFLAGS\t/ s:$: -fno-stack-protector-all:" \
			-i mkspecs/common/g++.conf || die
	fi

	# Bug 261632
	if use ppc64; then
		ewarn "Appending -mminimal-toc to CFLAGS/CXXFLAGS"
		append-flags -mminimal-toc
	fi

	# Respect CC, CXX, {C,CXX,LD}FLAGS in .qmake.cache
	sed -e "/^SYSTEM_VARIABLES=/i \
		CC='$(tc-getCC)'\n\
		CXX='$(tc-getCXX)'\n\
		CFLAGS='${CFLAGS}'\n\
		CXXFLAGS='${CXXFLAGS}'\n\
		LDFLAGS='${LDFLAGS}'\n\
		QMakeVar set QMAKE_CFLAGS_RELEASE\n\
		QMakeVar set QMAKE_CFLAGS_DEBUG\n\
		QMakeVar set QMAKE_CXXFLAGS_RELEASE\n\
		QMakeVar set QMAKE_CXXFLAGS_DEBUG\n\
		QMakeVar set QMAKE_LFLAGS_RELEASE\n\
		QMakeVar set QMAKE_LFLAGS_DEBUG\n"\
		-i configure \
		|| die "sed SYSTEM_VARIABLES failed"

	# Respect CC, CXX, LINK and *FLAGS in config.tests
	find config.tests/unix -name '*.test' -type f -print0 | xargs -0 \
		sed -i -e "/bin\/qmake/ s: \"QT_BUILD_TREE=: \
			'QMAKE_CC=$(tc-getCC)'    'QMAKE_CXX=$(tc-getCXX)'      'QMAKE_LINK=$(tc-getCXX)' \
			'QMAKE_CFLAGS+=${CFLAGS}' 'QMAKE_CXXFLAGS+=${CXXFLAGS}' 'QMAKE_LFLAGS+=${LDFLAGS}'&:" \
		|| die "sed config.tests failed"

	if ! version_is_at_least 4.8; then
		# Strip predefined CFLAGS from mkspecs (bugs 312689 and 352778)
		sed -i -e '/^QMAKE_CFLAGS_RELEASE/s:+=.*:+=:' mkspecs/common/g++.conf || die
	fi

	# Bug 172219
	sed -e 's:/X11R6/:/:' -i mkspecs/$(qt_mkspecs_dir)/qmake.conf || die

	if [[ ${CHOST} == *-darwin* ]]; then
		# Set FLAGS *and* remove -arch, since our gcc-apple is multilib
		# crippled (by design) :/
		local mac_gpp_conf=
		if [[ -f mkspecs/common/mac-g++.conf ]]; then
			# qt < 4.8 has mac-g++.conf
			mac_gpp_conf="mkspecs/common/mac-g++.conf"
		elif [[ -f mkspecs/common/g++-macx.conf ]]; then
			# qt >= 4.8 has g++-macx.conf
			mac_gpp_conf="mkspecs/common/g++-macx.conf"
		else
			die "no known conf file for mac found"
		fi
		sed \
			-e "s:QMAKE_CFLAGS_RELEASE.*=.*:QMAKE_CFLAGS_RELEASE=${CFLAGS}:" \
			-e "s:QMAKE_CXXFLAGS_RELEASE.*=.*:QMAKE_CXXFLAGS_RELEASE=${CXXFLAGS}:" \
			-e "s:QMAKE_LFLAGS_RELEASE.*=.*:QMAKE_LFLAGS_RELEASE=-headerpad_max_install_names ${LDFLAGS}:" \
			-e "s:-arch\s\w*::g" \
			-i ${mac_gpp_conf} \
			|| die "sed ${mac_gpp_conf} failed"

		# Fix configure's -arch settings that appear in qmake/Makefile and also
		# fix arch handling (automagically duplicates our -arch arg and breaks
		# pch). Additionally disable Xarch support.
		local mac_gcc_confs="${mac_gpp_conf}"
		if [[ -f mkspecs/common/gcc-base-macx.conf ]]; then
			mac_gcc_confs+=" mkspecs/common/gcc-base-macx.conf"
		fi
		sed \
			-e "s:-arch i386::" \
			-e "s:-arch ppc::" \
			-e "s:-arch x86_64::" \
			-e "s:-arch ppc64::" \
			-e "s:-arch \$i::" \
			-e "/if \[ ! -z \"\$NATIVE_64_ARCH\" \]; then/,/fi/ d" \
			-e "s:CFG_MAC_XARCH=yes:CFG_MAC_XARCH=no:g" \
			-e "s:-Xarch_x86_64::g" \
			-e "s:-Xarch_ppc64::g" \
			-i configure ${mac_gcc_confs} \
			|| die "sed -arch/-Xarch failed"

		# On Snow Leopard don't fall back to 10.5 deployment target.
		if [[ ${CHOST} == *-apple-darwin10 ]]; then
			sed -e "s:QMakeVar set QMAKE_MACOSX_DEPLOYMENT_TARGET.*:QMakeVar set QMAKE_MACOSX_DEPLOYMENT_TARGET 10.6:g" \
				-e "s:-mmacosx-version-min=10.[0-9]:-mmacosx-version-min=10.6:g" \
				-i configure ${mac_gpp_conf} \
				|| die "sed deployment target failed"
		fi
	fi

	# this one is needed for all systems with a separate -liconv, apart from
	# Darwin, for which the sources already cater for -liconv
	if use !elibc_glibc && [[ ${CHOST} != *-darwin* ]]; then
		sed -e 's|mac:\(LIBS += -liconv\)|\1|g' \
			-i config.tests/unix/iconv/iconv.pro \
			|| die "sed iconv.pro failed"
	fi

	# we need some patches for Solaris
	sed -i -e '/^QMAKE_LFLAGS_THREAD/a\QMAKE_LFLAGS_DYNAMIC_LIST = -Wl,--dynamic-list,' \
		mkspecs/$(qt_mkspecs_dir)/qmake.conf || die
	# use GCC over SunStudio
	sed -i -e '/PLATFORM=solaris-cc/s/cc/g++/' configure || die
	# do not flirt with non-Prefix stuff, we're quite possessive
	sed -i -e '/^QMAKE_\(LIB\|INC\)DIR\(_X11\|_OPENGL\|\)\t/s/=.*$/=/' \
		mkspecs/$(qt_mkspecs_dir)/qmake.conf || die

	# apply patches
	[[ -n ${PATCHES[@]} ]] && epatch "${PATCHES[@]}"
	epatch_user
}

# @FUNCTION: qt4-build_src_configure
# @DESCRIPTION:
# Default configure phase
qt4-build_src_configure() {
	setqtenv

	local conf="
		-prefix ${QTPREFIXDIR}
		-bindir ${QTBINDIR}
		-libdir ${QTLIBDIR}
		-docdir ${QTDOCDIR}
		-headerdir ${QTHEADERDIR}
		-plugindir ${QTPLUGINDIR}
		$(version_is_at_least 4.7 && echo -importdir ${QTIMPORTDIR})
		-datadir ${QTDATADIR}
		-translationdir ${QTTRANSDIR}
		-sysconfdir ${QTSYSCONFDIR}
		-examplesdir ${QTEXAMPLESDIR}
		-demosdir ${QTDEMOSDIR}
		-opensource -confirm-license
		-shared -fast -largefile -stl -verbose
		-nomake examples -nomake demos"

	# ARCH is set on Gentoo. Qt now falls back to generic on an unsupported
	# $(tc-arch). Therefore we convert it to supported values.
	case "$(tc-arch)" in
		amd64|x64-*)		  conf+=" -arch x86_64" ;;
		ppc-macos)		  conf+=" -arch ppc" ;;
		ppc|ppc64|ppc-*)	  conf+=" -arch powerpc" ;;
		sparc|sparc-*|sparc64-*)  conf+=" -arch sparc" ;;
		x86-macos)		  conf+=" -arch x86" ;;
		x86|x86-*)		  conf+=" -arch i386" ;;
		alpha|arm|ia64|mips|s390) conf+=" -arch $(tc-arch)" ;;
		hppa|sh)		  conf+=" -arch generic" ;;
		*) die "$(tc-arch) is unsupported by this eclass. Please file a bug." ;;
	esac

	conf+=" -platform $(qt_mkspecs_dir)"

	[[ $(get_libdir) != lib ]] && conf+=" -L${EPREFIX}/usr/$(get_libdir)"

	# debug/release
	if use debug; then
		conf+=" -debug"
	else
		conf+=" -release"
	fi
	conf+=" -no-separate-debug-info"

	# exceptions USE flag
	conf+=" $(in_iuse exceptions && qt_use exceptions || echo -exceptions)"

	# disable rpath on Qt >= 4.8 (bug 380415)
	# but leave it enabled on prefix (bug 417169)
	version_is_at_least 4.8 && use !prefix && conf+=" -no-rpath"

	# precompiled headers don't work on hardened, where the flag is masked
	conf+=" $(qt_use pch)"

	# -reduce-relocations
	# This flag seems to introduce major breakage to applications,
	# mostly to be seen as a core dump with the message "QPixmap: Must
	# construct a QApplication before a QPaintDevice" on Solaris.
	#   -- Daniel Vergien
	[[ ${CHOST} != *-solaris* ]] && conf+=" -reduce-relocations"

	# this one is needed for all systems with a separate -liconv, apart from
	# Darwin, for which the sources already cater for -liconv
	if use !elibc_glibc && [[ ${CHOST} != *-darwin* ]]; then
		conf+=" -liconv"
	fi

	if use_if_iuse glib; then
		local glibflags="$(pkg-config --cflags --libs glib-2.0 gthread-2.0)"
		# avoid the -pthread argument
		conf+=" ${glibflags//-pthread}"
		unset glibflags
	fi

	if use_if_iuse qpa; then
		echo
		ewarn "The qpa useflag enables the Qt Platform Abstraction, formely"
		ewarn "known as Qt Lighthouse. If you are not sure what that is, then"
		ewarn "disable it before reporting any bugs related to this useflag."
		echo
		conf+=" -qpa"
	fi

	if use aqua; then
		# On (snow) leopard use the new (frameworked) cocoa code.
		if [[ ${CHOST##*-darwin} -ge 9 ]]; then
			conf+=" -cocoa -framework"
			# We need the source's headers, not the installed ones.
			conf+=" -I${S}/include"
			# Add hint for the framework location.
			conf+=" -F${QTLIBDIR}"

			# We are crazy and build cocoa + qt3support :-)
			if use qt3support; then
				sed -e "/case \"\$PLATFORM,\$CFG_MAC_COCOA\" in/,/;;/ s|CFG_QT3SUPPORT=\"no\"|CFG_QT3SUPPORT=\"yes\"|" \
					-i configure || die
			fi
		else
			conf+=" -no-framework"
		fi
	else
		# freetype2 include dir is non-standard, thus pass it to configure
		conf+=" $(pkg-config --cflags-only-I freetype2)"
	fi

	conf+=" ${myconf}"
	myconf=

	echo ./configure ${conf}
	./configure ${conf} || die "./configure failed"

	prepare_directories ${QT4_TARGET_DIRECTORIES}
}

# @FUNCTION: qt4-build_src_compile
# @DESCRIPTION:
# Actual compile phase
qt4-build_src_compile() {
	setqtenv

	build_directories ${QT4_TARGET_DIRECTORIES}
}

# @FUNCTION: qt4-build_src_test
# @DESCRIPTION:
# Runs tests only in target directories.
qt4-build_src_test() {
	# QtMultimedia does not have any test suite (bug #332299)
	[[ ${PN} == qt-multimedia ]] && return

	for dir in ${QT4_TARGET_DIRECTORIES}; do
		emake -j1 check -C ${dir}
	done
}

# @FUNCTION: fix_includes
# @DESCRIPTION:
# For MacOS X we need to add some symlinks when frameworks are
# being used, to avoid complications with some more or less stupid packages.
fix_includes() {
	if use aqua && [[ ${CHOST##*-darwin} -ge 9 ]]; then
		local frw dest f h rdir
		# Some packages tend to include <Qt/...>
		dodir "${QTHEADERDIR#${EPREFIX}}"/Qt

		# Fake normal headers when frameworks are installed... eases life later
		# on, make sure we use relative links though, as some ebuilds assume
		# these dirs exist in src_install to add additional files
		f=${QTHEADERDIR}
		h=${QTLIBDIR}
		while [[ -n ${f} && ${f%%/*} == ${h%%/*} ]] ; do
			f=${f#*/}
			h=${h#*/}
		done
		rdir=${h}
		f="../"
		while [[ ${h} == */* ]] ; do
			f="${f}../"
			h=${h#*/}
		done
		rdir="${f}${rdir}"

		for frw in "${D}${QTLIBDIR}"/*.framework; do
			[[ -e "${frw}"/Headers ]] || continue
			f=$(basename ${frw})
			dest="${QTHEADERDIR#${EPREFIX}}"/${f%.framework}
			dosym "${rdir}"/${f}/Headers "${dest}"

			# Link normal headers as well.
			for hdr in "${D}/${QTLIBDIR}/${f}"/Headers/*; do
				h=$(basename ${hdr})
				dosym "../${rdir}"/${f}/Headers/${h} \
					"${QTHEADERDIR#${EPREFIX}}"/Qt/${h}
			done
		done
	fi
}

# @FUNCTION: qt4-build_src_install
# @DESCRIPTION:
# Perform the actual installation including some library fixes.
qt4-build_src_install() {
	[[ ${EAPI} == 2 ]] && use !prefix && ED=${D}
	setqtenv

	install_directories ${QT4_TARGET_DIRECTORIES}
	install_qconfigs
	fix_library_files
	fix_includes

	# remove .la files since we are building only shared Qt libraries
	find "${D}"${QTLIBDIR} -type f -name '*.la' -print0 | xargs -0 rm -f
}

# @FUNCTION: setqtenv
# @INTERNAL
setqtenv() {
	# Set up installation directories
	QTPREFIXDIR=${EPREFIX}/usr
	QTBINDIR=${EPREFIX}/usr/bin
	QTLIBDIR=${EPREFIX}/usr/$(get_libdir)/qt4
	QTPCDIR=${EPREFIX}/usr/$(get_libdir)/pkgconfig
	QTDOCDIR=${EPREFIX}/usr/share/doc/qt-${PV}
	QTHEADERDIR=${EPREFIX}/usr/include/qt4
	QTPLUGINDIR=${QTLIBDIR}/plugins
	QTIMPORTDIR=${QTLIBDIR}/imports
	QTDATADIR=${EPREFIX}/usr/share/qt4
	QTTRANSDIR=${QTDATADIR}/translations
	QTSYSCONFDIR=${EPREFIX}/etc/qt4
	QTEXAMPLESDIR=${QTDATADIR}/examples
	QTDEMOSDIR=${QTDATADIR}/demos
	QMAKE_LIBDIR_QT=${QTLIBDIR}
	QT_INSTALL_PREFIX=${EPREFIX}/usr/$(get_libdir)/qt4

	PLATFORM=$(qt_mkspecs_dir)
	unset QMAKESPEC

	export XDG_CONFIG_HOME="${T}"
}

# @FUNCTION: prepare_directories
# @USAGE: < directories >
# @INTERNAL
# @DESCRIPTION:
# Generates Makefiles for the given list of directories.
prepare_directories() {
	for x in "$@"; do
		pushd "${S}"/${x} >/dev/null || die
		einfo "Running qmake in: ${x}"
		# avoid running over the maximum argument number, bug #299810
		{
			echo "${S}"/mkspecs/common/*.conf
			find "${S}" -name '*.pr[io]'
		} | xargs sed -i \
			-e "s:\$\$\[QT_INSTALL_LIBS\]:${QTLIBDIR}:g" \
			-e "s:\$\$\[QT_INSTALL_PLUGINS\]:${QTPLUGINDIR}:g" \
			|| die
		"${S}"/bin/qmake "LIBS+=-L${QTLIBDIR}" "CONFIG+=nostrip" || die "qmake failed"
		popd >/dev/null || die
	done
}


# @FUNCTION: build_directories
# @USAGE: < directories >
# @INTERNAL
# @DESCRIPTION:
# Compiles the code in the given list of directories.
build_directories() {
	for x in "$@"; do
		pushd "${S}"/${x} >/dev/null || die
		emake CC="$(tc-getCC)" \
			CXX="$(tc-getCXX)" \
			LINK="$(tc-getCXX)" || die "emake failed"
		popd >/dev/null || die
	done
}

# @FUNCTION: install_directories
# @USAGE: < directories >
# @INTERNAL
# @DESCRIPTION:
# Runs emake install in the given directories, which are separated by spaces.
install_directories() {
	for x in "$@"; do
		pushd "${S}"/${x} >/dev/null || die
		emake INSTALL_ROOT="${D}" install || die "emake install failed"
		popd >/dev/null || die
	done
}

# @ECLASS-VARIABLE: QCONFIG_ADD
# @DESCRIPTION:
# List options that need to be added to QT_CONFIG in qconfig.pri
: ${QCONFIG_ADD:=}

# @ECLASS-VARIABLE: QCONFIG_REMOVE
# @DESCRIPTION:
# List options that need to be removed from QT_CONFIG in qconfig.pri
: ${QCONFIG_REMOVE:=}

# @ECLASS-VARIABLE: QCONFIG_DEFINE
# @DESCRIPTION:
# List variables that should be defined at the top of QtCore/qconfig.h
: ${QCONFIG_DEFINE:=}

# @FUNCTION: install_qconfigs
# @INTERNAL
# @DESCRIPTION:
# Install gentoo-specific mkspecs configurations.
install_qconfigs() {
	local x
	if [[ -n ${QCONFIG_ADD} || -n ${QCONFIG_REMOVE} ]]; then
		for x in QCONFIG_ADD QCONFIG_REMOVE; do
			[[ -n ${!x} ]] && echo ${x}=${!x} >> "${T}"/${PN}-qconfig.pri
		done
		insinto ${QTDATADIR#${EPREFIX}}/mkspecs/gentoo
		doins "${T}"/${PN}-qconfig.pri || die "installing ${PN}-qconfig.pri failed"
	fi

	if [[ -n ${QCONFIG_DEFINE} ]]; then
		for x in ${QCONFIG_DEFINE}; do
			echo "#define ${x}" >> "${T}"/gentoo-${PN}-qconfig.h
		done
		insinto ${QTHEADERDIR#${EPREFIX}}/Gentoo
		doins "${T}"/gentoo-${PN}-qconfig.h || die "installing ${PN}-qconfig.h failed"
	fi
}

# @FUNCTION: generate_qconfigs
# @INTERNAL
# @DESCRIPTION:
# Generates gentoo-specific qconfig.{h,pri}.
generate_qconfigs() {
	if [[ -n ${QCONFIG_ADD} || -n ${QCONFIG_REMOVE} || -n ${QCONFIG_DEFINE} || ${PN} == qt-core ]]; then
		local x qconfig_add qconfig_remove qconfig_new
		for x in "${ROOT}${QTDATADIR}"/mkspecs/gentoo/*-qconfig.pri; do
			[[ -f ${x} ]] || continue
			qconfig_add+=" $(sed -n 's/^QCONFIG_ADD=//p' "${x}")"
			qconfig_remove+=" $(sed -n 's/^QCONFIG_REMOVE=//p' "${x}")"
		done

		# these error checks do not use die because dying in pkg_post{inst,rm}
		# just makes things worse.
		if [[ -e "${ROOT}${QTDATADIR}"/mkspecs/gentoo/qconfig.pri ]]; then
			# start with the qconfig.pri that qt-core installed
			if ! cp "${ROOT}${QTDATADIR}"/mkspecs/gentoo/qconfig.pri \
				"${ROOT}${QTDATADIR}"/mkspecs/qconfig.pri; then
				eerror "cp qconfig failed."
				return 1
			fi

			# generate list of QT_CONFIG entries from the existing list
			# including qconfig_add and excluding qconfig_remove
			for x in $(sed -n 's/^QT_CONFIG +=//p' \
				"${ROOT}${QTDATADIR}"/mkspecs/qconfig.pri) ${qconfig_add}; do
					has ${x} ${qconfig_remove} || qconfig_new+=" ${x}"
			done

			# replace the existing QT_CONFIG list with qconfig_new
			if ! sed -i -e "s/QT_CONFIG +=.*/QT_CONFIG += ${qconfig_new}/" \
				"${ROOT}${QTDATADIR}"/mkspecs/qconfig.pri; then
				eerror "Sed for QT_CONFIG failed"
				return 1
			fi

			# create Gentoo/qconfig.h
			if [[ ! -e ${ROOT}${QTHEADERDIR}/Gentoo ]]; then
				if ! mkdir -p "${ROOT}${QTHEADERDIR}"/Gentoo; then
					eerror "mkdir ${QTHEADERDIR}/Gentoo failed"
					return 1
				fi
			fi
			: > "${ROOT}${QTHEADERDIR}"/Gentoo/gentoo-qconfig.h
			for x in "${ROOT}${QTHEADERDIR}"/Gentoo/gentoo-*-qconfig.h; do
				[[ -f ${x} ]] || continue
				cat "${x}" >> "${ROOT}${QTHEADERDIR}"/Gentoo/gentoo-qconfig.h
			done
		else
			rm -f "${ROOT}${QTDATADIR}"/mkspecs/qconfig.pri
			rm -f "${ROOT}${QTHEADERDIR}"/Gentoo/gentoo-qconfig.h
			rmdir "${ROOT}${QTDATADIR}"/mkspecs \
				"${ROOT}${QTDATADIR}" \
				"${ROOT}${QTHEADERDIR}"/Gentoo \
				"${ROOT}${QTHEADERDIR}" 2>/dev/null
		fi
	fi
}

# @FUNCTION: qt4-build_pkg_postrm
# @DESCRIPTION:
# Regenerate configuration when the package is completely removed.
qt4-build_pkg_postrm() {
	generate_qconfigs
}

# @FUNCTION: qt4-build_pkg_postinst
# @DESCRIPTION:
# Regenerate configuration, plus throw a message about possible
# breakages and proposed solutions.
qt4-build_pkg_postinst() {
	generate_qconfigs
}

# @FUNCTION: skip_qmake_build
# @INTERNAL
# @DESCRIPTION:
# Patches configure to skip qmake compilation, as it's already installed by qt-core.
skip_qmake_build() {
	sed -i -e "s:if true:if false:g" "${S}"/configure || die
}

# @FUNCTION: skip_project_generation
# @INTERNAL
# @DESCRIPTION:
# Exit the script early by throwing in an exit before all of the .pro files are scanned.
skip_project_generation() {
	sed -i -e "s:echo \"Finding:exit 0\n\necho \"Finding:g" "${S}"/configure || die
}

# @FUNCTION: symlink_binaries_to_buildtree
# @INTERNAL
# @DESCRIPTION:
# Symlinks generated binaries to buildtree, so they can be used during compilation time.
symlink_binaries_to_buildtree() {
	for bin in qmake moc uic rcc; do
		ln -s "${QTBINDIR}"/${bin} "${S}"/bin/ || die "symlinking ${bin} to ${S}/bin failed"
	done
}

# @FUNCTION: fix_library_files
# @INTERNAL
# @DESCRIPTION:
# Fixes the paths in *.la, *.prl, *.pc, as they are wrong due to sandbox and
# moves the *.pc files into the pkgconfig directory.
fix_library_files() {
	local libfile
	for libfile in "${D}"/${QTLIBDIR}/{*.la,*.prl,pkgconfig/*.pc}; do
		if [[ -e ${libfile} ]]; then
			sed -i -e "s:${S}/lib:${QTLIBDIR}:g" ${libfile} || die "sed on ${libfile} failed"
		fi
	done

	# pkgconfig files refer to WORKDIR/bin as the moc and uic locations
	for libfile in "${D}"/${QTLIBDIR}/pkgconfig/*.pc; do
		if [[ -e ${libfile} ]]; then
			sed -i -e "s:${S}/bin:${QTBINDIR}:g" ${libfile} || die "sed on ${libfile} failed"

		# Move .pc files into the pkgconfig directory
		dodir ${QTPCDIR#${EPREFIX}}
		mv ${libfile} "${D}"/${QTPCDIR}/ || die "moving ${libfile} to ${D}/${QTPCDIR}/ failed"
		fi
	done

	# Don't install an empty directory
	rmdir "${D}"/${QTLIBDIR}/pkgconfig
}

# @FUNCTION: qt_use
# @USAGE: < flag > [ feature ] [ enableval ]
# @DESCRIPTION:
# This will echo "-${enableval}-${feature}" if <flag> is enabled, or
# "-no-${feature}" if it's disabled. If [feature] is not specified, <flag>
# will be used for that. If [enableval] is not specified, it omits the
# "-${enableval}" part.
qt_use() {
	use "$1" && echo "${3:+-$3}-${2:-$1}" || echo "-no-${2:-$1}"
}

# @FUNCTION: qt_mkspecs_dir
# @RETURN: the specs-directory w/o path
# @DESCRIPTION:
# Allows us to define which mkspecs dir we want to use.
qt_mkspecs_dir() {
	local spec=

	case "${CHOST}" in
		*-freebsd*|*-dragonfly*)
			spec=freebsd ;;
		*-openbsd*)
			spec=openbsd ;;
		*-netbsd*)
			spec=netbsd ;;
		*-darwin*)
			if use aqua; then
				# mac with carbon/cocoa
				spec=macx
			else
				# darwin/mac with x11
				spec=darwin
			fi
			;;
		*-solaris*)
			spec=solaris ;;
		*-linux-*|*-linux)
			spec=linux ;;
		*)
			die "${FUNCNAME}(): Unknown CHOST '${CHOST}'" ;;
	esac

	case "$(tc-getCXX)" in
		*g++*)
			spec+=-g++ ;;
		*icpc*)
			spec+=-icc ;;
		*)
			die "${FUNCNAME}(): Unknown compiler '$(tc-getCXX)'" ;;
	esac

	# Add -64 for 64bit profiles
	if use x64-freebsd ||
		use amd64-linux ||
		use x64-macos ||
		use x64-solaris ||
		use sparc64-solaris
	then
		spec+=-64
	fi

	echo "${spec}"
}

# @FUNCTION: qt_nolibx11
# @INTERNAL
# @DESCRIPTION:
# Ignore X11 tests for packages that don't need X libraries installed.
qt_nolibx11() {
	sed -i "/unixtests\/compile.test.*config.tests\/x11\/xlib/,/fi$/d" "${S}"/configure ||
		die "x11 check sed failed"
}

EXPORT_FUNCTIONS pkg_setup src_unpack src_prepare src_configure src_compile src_install src_test pkg_postrm pkg_postinst
