#!/sbin/runscript
# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/app-backup/cvs-repo/gentoo-x86/app-backup/tsm/files/dsmc.init.d,v 1.4 2012/05/14 16:12:10 pacho Exp $

depend() {
        use net
        after dns
}

start() {
        ebegin "Starting dsmc"
        start-stop-daemon --start --background --nicelevel 15 \
                --make-pidfile --pidfile /var/run/dsmc.pid \
                --exec /opt/tivoli/tsm/client/ba/bin/dsmc sched ${DSMC_OPTS}
        eend $?
}

stop() {
        ebegin "Stopping dsmc"
        # For whatever reason SIGTERM doesn't affect the dsmc process, but
        # SIGHUP makes it exit cleanly
        start-stop-daemon --stop \
                --signal 1 \
                --pidfile /var/run/dsmc.pid
        eend $?
}

