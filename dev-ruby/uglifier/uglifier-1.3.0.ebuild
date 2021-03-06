# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/uglifier/uglifier-1.3.0.ebuild,v 1.1 2012/09/24 16:08:46 graaff Exp $

EAPI=4
USE_RUBY="ruby18 ruby19 ree18"

# Avoid building documentation to avoid dependencies on bundler and jeweler
RUBY_FAKEGEM_TASK_DOC=""

RUBY_FAKEGEM_RECIPE_TEST="rspec"

RUBY_FAKEGEM_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="Ruby wrapper for UglifyJS JavaScript compressor."
HOMEPAGE="https://github.com/lautis/uglifier"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~x64-macos"

IUSE=""

ruby_add_rdepend ">=dev-ruby/execjs-0.3.0 >=dev-ruby/multi_json-1.0.2"
