#!/sbin/runscript
# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/icinga/files/icinga-init.d,v 1.4 2012/09/17 19:53:22 prometheanfire Exp $

: ${ICINGACFG:=/etc/icinga/icinga.cfg}

extra_commands="checkconfig"
extra_started_commands="reload"

command=/usr/sbin/icinga
command_args="-d ${ICINGACFG}"

get_config() {
    if [ -e "${ICINGACFG}" ]; then
	    sed -n -e 's:^[ \t]*'$1'=\([^#]\+\).*:\1:p' "${ICINGACFG}"
	fi
}

pidfile=$(get_config lock_file)
start_stop_daemon_args="-e HOME=/var/lib/icinga"

depend() {
	need net
	use dns logger firewall mysql postgresql ido2db
}

checkconfig() {
	# Silent Check
	${command} -v ${ICINGACFG} &>/dev/null && return 0
	# Now we know there's problem - run again and display errors
	${command} -v ${ICINGACFG}
	eend $? "Configuration Error. Please fix your configfile"
}

reload()
{
	checkconfig || return 1
	ebegin "Reloading configuration"
	kill -HUP $(cat ${pidfile}) &>/dev/null
	eend $?
}

start_pre() {
	checkpath -d -o icinga:icinga $(get_config temp_path)  $(dirname $(get_config lock_file)) $(dirname $(get_config log_file)) $(dirname $(get_config status_file))
	checkpath -f -o icinga:icinga $(get_config log_file)
	rm -f $(get_config command_file)
}

stop_post() {
	rm -f $(get_config command_file)
	rm -r /tmp/icinga
}

svc_restart() {
	checkconfig || return 1
	ebegin "Restarting icinga"
	svc_stop
	svc_start
	eend $?
}

