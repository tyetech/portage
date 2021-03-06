# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/roadrunner/roadrunner-0.9.1.ebuild,v 1.8 2012/05/05 02:54:30 jdhore Exp $

# EBuild details
DESCRIPTION="RoadRunner library provides API for using Blocks Extensible Exchange Protocol"
HOMEPAGE="None available was http://rr.codefactory.se"
# upstream Died
SRC_URI="mirror://gentoo/roadrunner-${PV}.tar.gz"
LICENSE="Roadrunner"
SLOT="0"
KEYWORDS="x86 ppc"

# doc		= include documentation
IUSE="doc"

RDEPEND=">=dev-libs/glib-2.2.1
	>=dev-libs/libxml2-2.5.11"

DEPEND="
	>=dev-libs/glib-2.2.1
	>=dev-libs/libxml2-2.5.11
	virtual/pkgconfig
	doc? ( dev-util/gtk-doc )"

src_compile() {
	econf \
		$(use_enable doc gtk-doc) \
		|| die "configure failed"

	emake || die "emake failed"
}

src_install() {
	# Seems that the Makefiles are OK
	emake DESTDIR="${D}" install || die
}
