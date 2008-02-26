# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php/cvs-repo/gentoo-x86/dev-php/PEAR-Net_SMTP/Attic/PEAR-Net_SMTP-1.2.11.ebuild,v 1.1 2008/02/26 16:31:49 armin76 Exp $

inherit php-pear-r1

DESCRIPTION="An implementation of the SMTP protocol"

LICENSE="PHP-2.02"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE="minimal"

RDEPEND=">=dev-php/PEAR-Net_Socket-1.0.7
	!minimal? ( >=dev-php/PEAR-Auth_SASL-1.0.1-r1 )"
