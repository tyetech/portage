# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# $Header: /usr/local/ssd/gentoo-x86/output/dev-perl/cvs-repo/gentoo-x86/dev-perl/Curses/Attic/Curses-1.06.ebuild,v 1.4 2002/07/11 06:30:21 drobbins Exp $

DESCRIPTION="Curses interface modules for Perl"
HOMEPAGE="http://cpan.valueclick.com/authors/id/W/WP/WPS/${P}.readme"

LICENSE="Artistic"

SRC_URI="http://cpan.valueclick.com/authors/id/W/WP/WPS/${P}.tar.gz"

DEPEND=">=sys-devel/perl-5
	>=sys-libs/ncurses-5"


inherit perl-module

mymake="/usr"
