# Copyright 2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/profiles/cvs-repo/gentoo-x86/profiles/base/profile.bashrc,v 1.3 2009/07/21 00:08:05 zmedico Exp $

for conf in ${PN} ${PN}-${PV} ${PN}-${PV}-${PR}; do
	[[ -r ${PORTAGE_CONFIGROOT}/etc/portage/env/${CATEGORY}/${conf} ]] \
		&& . ${PORTAGE_CONFIGROOT}/etc/portage/env/${CATEGORY}/${conf}
done

if ! declare -F elog >/dev/null ; then
	elog() {
		einfo "$@"
	}
fi
