# Copyright 1999-2004 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-apache/Attic/selinux-apache-20040103.ebuild,v 1.1 2004/01/04 03:58:40 pebenito Exp $

TEFILES="apache.te"
FCFILES="apache.fc"
MACROS="apache_macros.te"

inherit selinux-policy

DESCRIPTION="SELinux policy for Apache HTTPD"

KEYWORDS="x86 ppc sparc"

