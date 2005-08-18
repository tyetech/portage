# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-fs/cvs-repo/gentoo-x86/sys-fs/evfs/Attic/evfs-9999.ebuild,v 1.1 2005/08/18 04:14:19 vapier Exp $

ECVS_MODULE="e17/apps/evfs"
inherit enlightenment

DESCRIPTION="Enlightenment File Daemon"

IUSE="threads"

DEPEND="x11-libs/ecore
	virtual/fam
	dev-libs/libxml2"

src_compile() {
	export MY_ECONF="$(use_enable threads)"
	enlightenment_src_compile
}
