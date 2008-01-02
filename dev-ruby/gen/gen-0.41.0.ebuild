# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/gen/Attic/gen-0.41.0.ebuild,v 1.1 2008/01/02 19:45:41 graaff Exp $

inherit ruby gems

DESCRIPTION="A simple code generation system"
HOMEPAGE="http://www.nitroproject.org/"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc64 ~x86"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.5
	=dev-ruby/glue-${PV}"
