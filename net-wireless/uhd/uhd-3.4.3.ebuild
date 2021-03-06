# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-wireless/cvs-repo/gentoo-x86/net-wireless/uhd/uhd-3.4.3.ebuild,v 1.3 2012/09/10 03:33:34 zerochaos Exp $

EAPI=4
PYTHON_DEPEND="2:2.6"
inherit versionator python cmake-utils

DESCRIPTION="Universal Software Radio Peripheral (USRP) Hardware Driver"
HOMEPAGE="http://code.ettus.com/redmine/ettus/projects/uhd/wiki"

SRC_URI="https://github.com/EttusResearch/UHD-Mirror/tarball/release_00$(get_version_component_range 1)_00$(get_version_component_range 2)_00$(get_version_component_range 3) -> EttusResearch-UHD-Mirror-$(get_version_component_range 1).$(get_version_component_range 2).$(get_version_component_range 3).tar.gz \
	http://files.ettus.com/binaries/maint_images/archive/uhd-images_00$(get_version_component_range 1).00$(get_version_component_range 2).002-12-geb083300.tar.gz"
#https://github.com/EttusResearch/UHD-Mirror/tags
#http://files.ettus.com/binaries/master_images/archive
KEYWORDS="~amd64 ~x86"
S="${WORKDIR}"/EttusResearch-UHD-Mirror-6047010/host

LICENSE="GPL-3"
SLOT="0"
IUSE=""
RDEPEND="virtual/libusb:1
	dev-libs/boost"
DEPEND="${RDEPEND}
	dev-python/cheetah"

src_install() {
	cmake-utils_src_install
	insinto /lib/udev/rules.d/
	doins "${S}"/utils/uhd-usrp.rules
	insinto /usr/share/${PN}
	doins -r "${WORKDIR}"/uhd-images_00$(get_version_component_range 1).00$(get_version_component_range 2).002-12-geb083300/share/uhd/images
}
