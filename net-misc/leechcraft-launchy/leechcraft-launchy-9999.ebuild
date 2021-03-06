# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/leechcraft-launchy/leechcraft-launchy-9999.ebuild,v 1.1 2012/09/04 17:55:55 pinkbyte Exp $

EAPI="4"

inherit leechcraft toolchain-funcs

DESCRIPTION="Allows one to launch third-party applications (as well as LeechCraft plugins) from LeechCraft"

SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="~net-misc/leechcraft-core-${PV}
	x11-libs/qt-declarative:4"
RDEPEND="${DEPEND}
	~virtual/leechcraft-trayarea-${PV}"

# TODO: Maybe simplify this or add apropriate function to leechcraft eclass?
pkg_pretend() {
	if [[ ${MERGE_TYPE} != binary ]]; then
		[[ $(gcc-major-version) -lt 4 ]] || \
				( [[ $(gcc-major-version) -eq 4 && $(gcc-minor-version) -lt 6 ]] ) \
			&& die "Sorry, but gcc 4.6 or higher is required."
	fi
}
