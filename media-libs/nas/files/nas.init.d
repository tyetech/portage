#!/sbin/runscript
# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/media-libs/cvs-repo/gentoo-x86/media-libs/nas/files/nas.init.d,v 1.5 2007/04/02 18:12:18 drac Exp $

depend() {
	need net
	after alsasound esd
}

start() {
	ebegin "Starting nas"
	start-stop-daemon --start --quiet --exec /usr/bin/nasd --background \
		--pidfile /var/run/nasd.pid --make-pidfile -- $NAS_OPTIONS
	eend $?
}

stop() {
	ebegin "Stopping nas"
	start-stop-daemon --stop --quiet --pidfile /var/run/nasd.pid
	eend $?
}
