#!/sbin/runscript
# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/www-misc/cvs-repo/gentoo-x86/www-misc/zoneminder/files/Attic/init.d,v 1.1 2006/02/06 22:02:52 rl03 Exp $

depend() {
    need mysql
    use net
}

start() {
	ebegin "Starting zoneminder"
	eval ${CMD_START}
	eend $?
}

stop() {
	ebegin "Stopping zoneminder"
	eval ${CMD_STOP}
	eend $?
}
