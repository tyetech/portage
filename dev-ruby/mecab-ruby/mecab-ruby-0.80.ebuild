# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/mecab-ruby/Attic/mecab-ruby-0.80.ebuild,v 1.3 2005/11/26 17:00:24 tgall Exp $

inherit ruby eutils

DESCRIPTION="MeCab library module for Ruby"
HOMEPAGE="http://chasen.org/~taku/software/mecab/"
SRC_URI="http://chasen.org/~taku/software/mecab/bindings/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~x86 ~ppc ~amd64 ppc64"
IUSE=""

DEPEND="virtual/ruby
	>=app-text/mecab-0.80"
