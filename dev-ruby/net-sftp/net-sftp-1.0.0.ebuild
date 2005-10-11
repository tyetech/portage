# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ruby/cvs-repo/gentoo-x86/dev-ruby/net-sftp/Attic/net-sftp-1.0.0.ebuild,v 1.3 2005/10/11 01:19:50 ticho Exp $

inherit ruby

DESCRIPTION="SFTP in pure Ruby"
HOMEPAGE="http://net-ssh.rubyforge.org/"
SRC_URI="http://rubyforge.org/frs/download.php/4946/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~ppc x86"
IUSE=""

USE_RUBY="ruby18"

RDEPEND="dev-ruby/net-ssh"

