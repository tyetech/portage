# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/XML-Stream/Attic/XML-Stream-1.23.ebuild,v 1.1 2010/01/09 09:18:11 tove Exp $

EAPI=2

MODULE_AUTHOR=DAPATRICK
inherit perl-module

DESCRIPTION="Creates and XML Stream connection and parses return data"

SLOT="0"
LICENSE="LGPL-2"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="ssl"

DEPEND="dev-perl/Authen-SASL
	dev-perl/Net-DNS
	ssl? ( dev-perl/IO-Socket-SSL )
	virtual/perl-MIME-Base64"

SRC_TEST="online"
