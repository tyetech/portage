# Copyright 2006-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/profiles/cvs-repo/gentoo-x86/profiles/base/profile.bashrc,v 1.7 2011/06/12 10:10:10 ferringb Exp $

if ! declare -F elog >/dev/null ; then
	elog() {
		einfo "$@"
	}
fi
