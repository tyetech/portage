# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/sec-policy/cvs-repo/gentoo-x86/sec-policy/selinux-openldap/Attic/selinux-openldap-20051122.ebuild,v 1.3 2007/07/11 02:56:48 mr_bones_ Exp $

inherit selinux-policy

TEFILES="slapd.te"
FCFILES="slapd.fc"
IUSE=""
RDEPEND=">=sec-policy/selinux-base-policy-20050618"

DESCRIPTION="SELinux policy for OpenLDAP server"

KEYWORDS="amd64 mips ppc sparc x86"
