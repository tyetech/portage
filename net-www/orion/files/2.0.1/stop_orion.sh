#!/bin/bash
# $Header: /usr/local/ssd/gentoo-x86/output/net-www/cvs-repo/gentoo-x86/net-www/orion/files/2.0.1/Attic/stop_orion.sh,v 1.2 2004/07/18 04:26:56 dragonheart Exp $
ps auxww | grep orion.jar | awk '{print $2}' | xargs kill &> /dev/null
