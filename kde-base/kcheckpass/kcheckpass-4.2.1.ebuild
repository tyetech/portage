# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kcheckpass/Attic/kcheckpass-4.2.1.ebuild,v 1.2 2009/03/08 02:53:33 jmbsvicetto Exp $

EAPI="2"

KMNAME="kdebase-workspace"
inherit kde4-meta

DESCRIPTION="A simple password checker, used by any software in need of user authentication."
KEYWORDS="~amd64 ~ppc ~ppc64 ~x86"
IUSE="debug pam"

DEPEND="
	pam? (
		>=kde-base/kdebase-pam-7
		virtual/pam
	)
"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}/kdebase-4.0.2-pam-optional.patch" )

src_configure() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_with pam PAM)"

	kde4-meta_src_configure
}
