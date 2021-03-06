# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-i18n/cvs-repo/gentoo-x86/app-i18n/kde-l10n-scripts/kde-l10n-scripts-9999.ebuild,v 1.4 2012/08/08 11:09:19 scarabeus Exp $

EAPI=4

EGIT_REPO_URI="git://github.com/vpelcak/kde-scripts.git"
[[ ${PV} == 9999 ]] && inherit git-2

DESCRIPTION="Set of scripts to manage KDE translation files."
HOMEPAGE="https://github.com/vpelcak/kde-scripts"
[[ ${PV} == 9999 ]] || SRC_URI=""

LICENSE="LGPL-3"
SLOT="0"
[[ ${PV} == 9999 ]] || KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	app-crypt/md5deep
	app-i18n/pology
	app-shells/bash
	dev-vcs/subversion
	kde-base/kdesdk-misc[extras]
"
DEPEND="${RDEPEND}"

src_prepare() {
	sed -i \
		-e "s:/usr/local:/usr:" \
		Makefile || die
}
