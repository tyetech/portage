#!/bin/sh
# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-apps/cvs-repo/gentoo-x86/sys-apps/acpid/files/Attic/acpid-1.0.4-default.sh,v 1.1 2004/10/19 08:07:45 brix Exp $

# Default acpi script that takes an entry for all actions

set $*

group=${1/\/*/}
action=${1/*\//}

case "$group" in
	button)
		case "$action" in
			power)	/sbin/init 0
				;;
			*)	logger "ACPI action $action is not defined"
				;;
		esac
		;;

	*)
		logger "ACPI group $group / action $action is not defined"
		;;
esac
