#!/bin/bash
# $Header: /usr/local/ssd/gentoo-x86/output/net-www/cvs-repo/gentoo-x86/net-www/orion/files/1.5.2b/Attic/stop_orion.sh,v 1.2 2003/03/14 20:32:22 absinthe Exp $
ps auxww | grep orion.jar | awk '{print $2}' | xargs kill &> /dev/null
