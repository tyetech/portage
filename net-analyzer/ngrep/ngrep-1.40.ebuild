# Copyright 1999-2000 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License, v2 or later
# Author Achim Gottinger <achim@gentoo.org>
# $Header: /usr/local/ssd/gentoo-x86/output/net-analyzer/cvs-repo/gentoo-x86/net-analyzer/ngrep/Attic/ngrep-1.40.ebuild,v 1.1 2001/06/21 20:42:02 achim Exp $

A=${P}.tar.gz
S=${WORKDIR}/ngrep
DESCRIPTION="A grep for network layers"
SRC_URI="http://prdownloads.sourceforge.net/ngrep/${A}"
HOMEPAGE="http://ngrep.sourceforge.net"

DEPEND="virtual/glibc
	>=net-libs/libpcap-0.5.2"

RDEPEND="virtual/glibc"

#src_unpack() {
#  unpack ${A}
#  patch -p0 < ${FILESDIR}/${PF}-gentoo.diff
#}

src_compile() {
  
  try ./configure --host=${CHOST} --prefix=/usr
  try make
}

src_install() {

  into /usr
  dobin ngrep
  doman ngrep.8
  dodoc BUGS CHANGES COPYRIGHT CREDITS README TODO USAGE
}



