# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-vcs/cvs-repo/gentoo-x86/dev-vcs/svn2git/svn2git-1.0.3_p1.ebuild,v 1.3 2012/08/03 16:58:05 kensington Exp $

EAPI="2"

inherit versionator eutils qt4-r2
[ "$PV" == "9999" ] && inherit git

MY_PV=$(get_version_component_range 1-3)

DESCRIPTION="Tool for one-time conversion from svn to git."
HOMEPAGE="http://gitorious.org/svn2git/svn2git"
if [ "$PV" == "9999" ]; then
	EGIT_REPO_URI="git://gitorious.org/svn2git/svn2git.git"
	KEYWORDS=""
else
	SRC_URI="http://gitorious.org/${PN}/${PN}/archive-tarball/${MY_PV} -> ${PN}-${MY_PV}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi

LICENSE="GPL-3"
SLOT="0"
IUSE=""
# KEYWORDS way up

DEPEND="dev-vcs/subversion
	x11-libs/qt-core:4"
RDEPEND="${DEPEND}
	dev-vcs/git"

S=${WORKDIR}/${PN}-${PN}

src_prepare() {
	# Note: patching order matters
	epatch "${FILESDIR}"/${PN}-1.0.2.1-include-path.patch
	if [[ "$PV" != "9999" ]]; then
		epatch "${FILESDIR}"/${PN}-1.0.3_p1-version.patch
		epatch "${FILESDIR}"/${PN}-1.0.3-backup-refs.patch
	fi

	qt4-r2_src_prepare
}

src_install() {
	insinto /usr/share/${PN}/samples
	doins samples/*.rules || die 'doins failed'
	dobin svn-all-fast-export || die 'dobin failed'
	dosym svn-all-fast-export /usr/bin/svn2git || die 'dosym failed'
}
