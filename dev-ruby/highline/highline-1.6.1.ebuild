# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/highline/highline-1.6.1.ebuild,v 1.11 2011/10/03 20:00:35 jer Exp $

EAPI=2

USE_RUBY="ruby18 jruby ree18"

RUBY_FAKEGEM_EXTRADOC="CHANGELOG README TODO"
RUBY_FAKEGEM_DOCDIR="doc/html"

inherit ruby-fakegem

DESCRIPTION="Highline is a high-level command-line IO library for ruby."
HOMEPAGE="http://rubyforge.org/projects/highline/"

IUSE=""
LICENSE="|| ( GPL-2 Ruby )"
SLOT="0"
KEYWORDS="amd64 hppa ia64 ppc ppc64 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x64-solaris ~x86-solaris"

all_ruby_prepare() {
	sed -i -e '/AUTHORS/s:^:#:' Rakefile || die "Fixing the Rakefile failed"
}
