# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/vala.eclass,v 1.4 2012/09/20 04:48:26 tetromino Exp $

# @ECLASS: vala.eclass
# @MAINTAINER:
# gnome@gentoo.org
# @AUTHOR:
# Alexandre Rostovtsev <tetromino@gentoo.org>
# @BLURB: Sets up the environment for using a specific version of vala.
# @DESCRIPTION:
# This eclass sets up commonly used environment variables for using a specific
# version of dev-lang/vala to configure and build a package. It is needed for
# packages whose build systems assume the existence of certain unversioned vala
# executables, pkgconfig files, etc., which Gentoo does not provide.
#
# This eclass provides one phase function: src_prepare.

inherit multilib

case "${EAPI:-0}" in
	0)	die "EAPI=0 is not supported" ;;
	1)	;;
	*)	EXPORT_FUNCTIONS src_prepare ;;
esac

# @ECLASS-VARIABLE: VALA_MIN_API_VERSION
# @DESCRIPTION:
# Minimum vala API version (e.g. 0.16).
VALA_MIN_API_VERSION=${VALA_MIN_API_VERSION:-0.10}

# @ECLASS-VARIABLE: VALA_MAX_API_VERSION
# @DESCRIPTION:
# Maximum vala API version (e.g. 0.18).
VALA_MAX_API_VERSION=${VALA_MAX_API_VERSION:-0.18}

# @ECLASS-VARIABLE: VALA_USE_DEPEND
# @DEFAULT_UNSET
# @DESCRIPTION:
# USE dependencies that vala must be built with (e.g. vapigen).

# @FUNCTION: vala_api_versions
# @DESCRIPTION:
# Outputs a list of vala API versions from VALA_MAX_API_VERSION down to
# VALA_MIN_API_VERSION.
vala_api_versions() {
	eval "echo 0.{${VALA_MAX_API_VERSION#0.}..${VALA_MIN_API_VERSION#0.}..2}"
}

# @FUNCTION: vala_depend
# @DESCRIPTION:
# Outputs a ||-dependency string on vala from VALA_MAX_API_VERSION down to
# VALA_MIN_API_VERSION
vala_depend() {
	local u v versions=$(vala_api_versions)
	[[ ${VALA_USE_DEPEND} ]] && u="[${VALA_USE_DEPEND}]"

	echo -n "|| ("
	for v in ${versions}; do
		echo -n " dev-lang/vala:${v}${u}"
	done
	echo " )"
}

# @FUNCTION: vala_best_api_version
# @DESCRIPTION:
# Returns the highest installed vala API version satisfying
# VALA_MAX_API_VERSION, VALA_MIN_API_VERSION, and VALA_USE_DEPEND.
vala_best_api_version() {
	local u v
	[[ ${VALA_USE_DEPEND} ]] && u="[${VALA_USE_DEPEND}]"
	for v in $(vala_api_versions); do
		has_version "dev-lang/vala:${v}${u}" && echo "${v}" && return
	done
}

# @FUNCTION: vala_src_prepare
# @USAGE: [--vala-api-version api_version]
# @DESCRIPTION:
# Sets up the environment variables and pkgconfig files for the
# specified API version, or, if no version is specified, for the
# highest installed vala API version satisfying
# VALA_MAX_API_VERSION, VALA_MIN_API_VERSION, and VALA_USE_DEPEND.
# Dies if called without --vala-api-version and no suitable vala
# version is found.
vala_src_prepare() {
	local p d valafoo version

	if [[ $1 = "--vala-api-version" ]]; then
		version=$2
		[[ ${version} ]] || die "'--vala-api-version' option requires API version parameter."
	else
		version=$(vala_best_api_version)
		[[ ${version} ]] || die "No installed vala in $(vala_depend)"
	fi

	export VALAC=$(type -P valac-${version})

	valafoo=$(type -P vala-gen-introspect-${version})
	[[ ${valafoo} ]] && export VALA_GEN_INTROSPECT="${valafoo}"

	valafoo=$(type -P vapigen-${version})
	[[ ${valafoo} ]] && export VAPIGEN="${valafoo}"

	valafoo="${EPREFIX}/usr/share/vala/Makefile.vapigen"
	[[ -e ${valafoo} ]] && export VAPIGEN_MAKEFILE="${valafoo}"

	export VAPIGEN_VAPIDIR="${EPREFIX}/usr/share/vala/vapi"

	mkdir -p "${T}/pkgconfig" || die "mkdir failed"
	for p in libvala vapigen; do
		for d in "${EPREFIX}/usr/$(get_libdir)/pkgconfig" "${EPREFIX}/usr/share/pkgconfig"; do
			if [[ -e ${d}/${p}-${version}.pc ]]; then
				ln -s "${d}/${p}-${version}.pc" "${T}/pkgconfig/${p}.pc" || die "ln failed"
				break
			fi
		done
	done
	: ${PKG_CONFIG_PATH:="${EPREFIX}/usr/$(get_libdir)/pkgconfig:${EPREFIX}/usr/share/pkgconfig"}
	export PKG_CONFIG_PATH="${T}/pkgconfig:${PKG_CONFIG_PATH}"
}
