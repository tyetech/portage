# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-p2p/cvs-repo/gentoo-x86/net-p2p/phex/files/Attic/phex-2.6.4.89.sh,v 1.1 2005/09/26 21:09:27 mkay Exp $

#!/bin/sh

java -classpath $(java-config -p commons-logging,commons-httpclient-3,phex,jgoodies-looks-1.3,jgoodies-forms) phex.Main
