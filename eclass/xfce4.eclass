# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/eclass/cvs-repo/gentoo-x86/eclass/Attic/xfce4.eclass,v 1.34 2011/01/30 18:58:56 ssuominen Exp $

# @DEAD
# To be removed on 2011/09/30.
ewarn "Please fix your package (${CATEGORY}/${PF}) to not use ${ECLASS}.eclass"

xfce4_pkg_postrm() {
	:
}

EXPORT_FUNCTIONS pkg_postrm
