# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/AnyEvent/Attic/AnyEvent-5.2.7.1.ebuild,v 1.1 2010/06/09 05:38:56 tove Exp $

EAPI=2

inherit versionator
MODULE_AUTHOR=MLEHMANN
MY_P=${PN}-$(get_major_version).$(delete_all_version_separators $(get_after_major_version))
S=${WORKDIR}/${MY_P}
inherit perl-module

DESCRIPTION="provide framework for multiple event loops"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~ppc ~ppc64 ~sparc ~x86 ~x86-solaris"
IUSE=""

RDEPEND="dev-perl/Event"
DEPEND=""

SRC_TEST="do"
