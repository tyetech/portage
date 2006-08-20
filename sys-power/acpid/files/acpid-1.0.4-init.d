#!/sbin/runscript
# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-power/cvs-repo/gentoo-x86/sys-power/acpid/files/Attic/acpid-1.0.4-init.d,v 1.4 2006/08/20 04:16:44 vapier Exp $

opts="reload"

depend() {
	need localmount
}

checkconfig() {
	if [[ ! -e /proc/acpi ]] ; then
		eerror "ACPI support has not been compiled into the kernel"
		return 1
	fi
}

start() {
	checkconfig || return 1

	ebegin "Starting acpid"
	acpid ${ACPID_OPTIONS}
	eend $?
}

stop() {
	ebegin "Stopping acpid"
	start-stop-daemon --stop --exec /usr/sbin/acpid
	eend $?
}

reload() {
	ebegin "Reloading acpid configuration"
	killall -HUP acpid
	eend $?
}
