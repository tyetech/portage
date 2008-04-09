# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/ruby-opengl/Attic/ruby-opengl-0.60.0.ebuild,v 1.4 2008/04/09 13:49:44 armin76 Exp $

inherit gems

DESCRIPTION="OpenGL / GLUT bindings for ruby"
HOMEPAGE="http://ruby-opengl.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~sparc ~x86"

IUSE=""
DEPEND=">=dev-ruby/mkrf-0.2.0
	dev-ruby/rake
	virtual/opengl
	virtual/glut"
