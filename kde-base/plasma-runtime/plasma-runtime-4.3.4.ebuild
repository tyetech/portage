# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/kde-base/cvs-repo/gentoo-x86/kde-base/plasma-runtime/Attic/plasma-runtime-4.3.4.ebuild,v 1.2 2010/01/19 09:30:54 abcd Exp $

EAPI="2"

KMNAME="kdebase-runtime"
KMMODULE="plasma"
inherit kde4-meta

DESCRIPTION="Script engine and package tool for plasma"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"

# cloned from workspace thus introduce collisions.
add_blocker plasma-workspace '<4.2.90'
