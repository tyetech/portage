# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-misc/cvs-repo/gentoo-x86/net-misc/leechcraft-secman/leechcraft-secman-0.5.85.ebuild,v 1.1 2012/10/08 16:00:49 pinkbyte Exp $

EAPI="4"

inherit leechcraft

DESCRIPTION="Security and personal data manager for LeechCraft"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

DEPEND="~net-misc/leechcraft-core-${PV}"
RDEPEND="${DEPEND}"
