#!/bin/bash
# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/games-arcade/cvs-repo/gentoo-x86/games-arcade/mtp-target-bin/files/Attic/mtp-target-bin.sh,v 1.2 2004/06/25 07:48:30 mr_bones_ Exp $

cd GENTOODIR

exe=""
dir=""
case $0 in
	*client*) exe=client; dir=client;;
	*server*) exe=mtp_target_service; dir=server;;
	*) exit 1;;
esac

cd ${dir}
export LD_LIBRARY_PATH="../lib:${LD_LIBRARY_PATH}"
exec ./${exe} "$@"
