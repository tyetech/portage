# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/actionpack/Attic/actionpack-2.2.2.ebuild,v 1.3 2009/01/07 15:25:37 ranger Exp $

inherit ruby gems

DESCRIPTION="Eases web-request routing, handling, and response."
HOMEPAGE="http://rubyforge.org/projects/actionpack/"

LICENSE="MIT"
SLOT="2.2"
KEYWORDS="amd64 ~ia64 ~ppc ppc64 ~sparc x86 ~x86-fbsd"
IUSE=""

DEPEND=">=dev-lang/ruby-1.8.5
	=dev-ruby/activesupport-2.2.2"
