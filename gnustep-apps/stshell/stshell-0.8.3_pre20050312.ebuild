# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/gnustep-apps/cvs-repo/gentoo-x86/gnustep-apps/stshell/Attic/stshell-0.8.3_pre20050312.ebuild,v 1.3 2006/03/25 22:48:02 grobian Exp $

inherit gnustep subversion

ESVN_OPTIONS="-r{${PV/*_pre}}"
ESVN_REPO_URI="http://svn.gna.org/svn/gnustep/libs/steptalk/trunk/Examples/Shell"
ESVN_STORE_DIR="${DISTDIR}/svn-src/svn.gna.org-gnustep/libs/steptalk/trunk"
ESVN_PROJECT=Examples

DESCRIPTION="An interactive shell for StepTalk"
HOMEPAGE="http://www.gnustep.org/experience/StepTalk.html"

KEYWORDS="~x86 ~ppc"
LICENSE="LGPL-2.1"
SLOT="0"

IUSE=""
DEPEND="${GS_DEPEND}
	=gnustep-libs/steptalk-${PV}*"
RDEPEND="${GS_RDEPEND}
	=gnustep-libs/steptalk-${PV}*"

egnustep_install_domain "System"
