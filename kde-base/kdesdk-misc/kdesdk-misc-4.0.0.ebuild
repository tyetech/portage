# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/kdesdk-misc/Attic/kdesdk-misc-4.0.0.ebuild,v 1.1 2008/01/17 23:54:33 philantrop Exp $

EAPI="1"

KMNAME=kdesdk
KMNOMODULE="true"
inherit kde4-meta

DESCRIPTION="kdesdk-misc - Various files and utilities"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

# FIXME:
# currently broken:
#	kdepalettes/
# currently doesn't do anything: scheck and poxml
KMEXTRA="kdeaccounts-plugin/
	scheck/
	poxml/
	kprofilemethod/"
