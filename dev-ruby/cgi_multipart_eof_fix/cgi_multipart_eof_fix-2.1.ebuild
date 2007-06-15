# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/cgi_multipart_eof_fix/Attic/cgi_multipart_eof_fix-2.1.ebuild,v 1.7 2007/06/15 20:20:34 dertobi123 Exp $

inherit ruby gems

USE_RUBY="ruby18"
DESCRIPTION="Fix an exploitable bug in CGI multipart parsing which affects Ruby
<= 1.8.5"
HOMEPAGE="https://rubyforge.org/projects/fauna/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""
