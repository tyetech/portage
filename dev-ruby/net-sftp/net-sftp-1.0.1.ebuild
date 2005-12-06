# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/net-sftp/Attic/net-sftp-1.0.1.ebuild,v 1.1 2005/12/06 22:47:57 citizen428 Exp $

inherit ruby gems

DESCRIPTION="SFTP in pure Ruby"
HOMEPAGE="http://net-ssh.rubyforge.org/"
SRC_URI="http://gems.rubyforge.org/gems/${P}.gem"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc ~x86"
IUSE=""

USE_RUBY="ruby18"

RDEPEND="dev-ruby/net-ssh"

