# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/profiles/cvs-repo/gentoo-x86/profiles/default-linux/x86/2006.1/Attic/profile.bashrc,v 1.2 2006/07/26 23:00:20 wolf31o2 Exp $

if [[ ${EBUILD_PHASE} == "setup" ]]
then
	echo
	ewarn "Warning, the Surgeon General has determined that using profiles before"
	ewarn "they have been released can cause a multitude of medical problems,"
	ewarn "including, but not limited to:"
	echo
	ewarn "Nausea, diarrhea, intestinal blockage, mental defects, anal leakage,"
	ewarn "erectile disfunction, blindness, and death"
	echo
	ewarn "Use of this profile should be undertaken solely at your own risk!"
	echo
	sleep 5
fi
