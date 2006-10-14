# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/ant/Attic/ant-1.6.5.ebuild,v 1.8 2006/10/14 15:58:09 nichoj Exp $

DESCRIPTION="Java-based build tool similar to 'make' that uses XML configuration files."
HOMEPAGE="http://ant.apache.org/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 x86"
IUSE=""

DEPEND="~dev-java/ant-tasks-${PV}
		~dev-java/ant-core-${PV}"
RDEPEND="${DEPEND}"
