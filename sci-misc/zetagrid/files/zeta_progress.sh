# Copyright 1999-2003 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sci-misc/cvs-repo/gentoo-x86/sci-misc/zetagrid/files/Attic/zeta_progress.sh,v 1.1 2004/12/27 21:10:25 ribosome Exp $

# ======================================================================
#  zeta_progress.sh      Start script for the ZetaGrid progress utility
# ----------------------------------------------------------------------
#
#  This script sets the environment for the ZetaGrid progress utility.
#
#  Please note:
#
#  - You must adopte the Java call below for your environment.
#
#  - This utility reads the progress file 'zeta_zeros.tmp'
#    which only exists when the ZetaGrid client is running.
#
#  Prerequisite: Java Runtime Environment 1.2.2 or higher,
#                e.g. http://java.sun.com/j2se/1.3/download.html
#
# ======================================================================

java -Djava.library.path=. -cp zeta_client.jar zeta.ShowProgress
