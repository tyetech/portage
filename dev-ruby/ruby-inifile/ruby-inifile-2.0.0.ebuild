# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-inifile/Attic/ruby-inifile-2.0.0.ebuild,v 1.1 2006/10/06 04:36:44 pclouds Exp $

inherit ruby

DESCRIPTION="Small library to parse INI-files in Ruby"
HOMEPAGE="http://raa.ruby-lang.org/project/ruby-inifile/"
SRC_URI="http://gregoire.lejeune.free.fr/${PN}_${PV}.tar.gz"

SLOT="0"
IUSE=""
USE_RUBY="ruby16 ruby18"
LICENSE="Ruby"
KEYWORDS="~x86 ~amd64"
S=${WORKDIR}/${PN}
