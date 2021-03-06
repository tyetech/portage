# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-java/cvs-repo/gentoo-x86/dev-java/ant-apache-bcel/ant-apache-bcel-1.8.4.ebuild,v 1.4 2012/08/23 07:55:40 xmw Exp $

EAPI="4"

ANT_TASK_DEPNAME="bcel"

inherit ant-tasks

KEYWORDS="amd64 ppc ~ppc64 x86 ~x86-fbsd ~x64-freebsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE=""

DEPEND=">=dev-java/bcel-5.1-r3:0"
RDEPEND="${DEPEND}"
