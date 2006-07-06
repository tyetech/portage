# Copyright 2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/profiles/cvs-repo/gentoo-x86/profiles/base/profile.bashrc,v 1.2 2006/07/06 21:35:00 genone Exp $

for conf in ${PN} ${PN}-${PV} ${PN}-${PV}-${PR}; do
	[[ -r ${PORTAGE_CONFIGROOT}/etc/portage/env/${CATEGORY}/${conf} ]] \
		&& . ${PORTAGE_CONFIGROOT}/etc/portage/env/${CATEGORY}/${conf}
done

if [[ $(type -t elog) != "function" ]]; then
	elog() {
		einfo "$@"
	}
fi
