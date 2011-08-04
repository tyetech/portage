#!/sbin/runscript
# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sys-power/cvs-repo/gentoo-x86/sys-power/acpid/files/Attic/acpid-2.0.11-init.d,v 1.5 2011/08/04 18:04:01 ssuominen Exp $

extra_commands="reload"
command="/usr/sbin/acpid"
command_args="${ACPID_OPTIONS}"
start_stop_daemon_args="--quiet"
description="Daemon for Advanced Configuration and Power Interface"

depend() {
	if [ ! -f /etc/init.d/sysfs ]; then
		eerror "The $SVCNAME init-script is written for baselayout-2!"
		eerror "Please do not use it with baselayout-1!".
		return 1
	fi

	need localmount
	use logger
}

reload() {
	ebegin "Reloading acpid configuration"
	start-stop-daemon --exec $command --signal HUP
	eend $?
}
