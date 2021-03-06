# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-ml/cvs-repo/gentoo-x86/dev-ml/cairo-ocaml/cairo-ocaml-1.2.0.ebuild,v 1.1 2012/06/18 20:01:27 bicatali Exp $

EAPI=4

inherit eutils findlib autotools

DESCRIPTION="Ocaml bindings for the cairo vector graphics library"
HOMEPAGE="http://www.cairographics.org/cairo-ocaml/"
SRC_URI="http://cgit.freedesktop.org/cairo-ocaml/snapshot/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="doc examples gtk pango svg"

RDEPEND="dev-lang/ocaml
	x11-libs/cairo
	gtk? ( dev-ml/lablgtk:2 )
	pango? ( x11-libs/pango )
	svg? ( x11-libs/libsvg-cairo )"
DEPEND="${RDEPEND}"

src_prepare() {
	# 3 patches from debian and one for automagic on libsvg-cairo
	epatch \
		"${FILESDIR}"/0001-Add-missing-libraries-used-by-the-stubs-to-CAIRO_LIB.patch \
		"${FILESDIR}"/0002-Fix-Makefile-to-avoid-recompiling-files-in-usr.patch \
		"${FILESDIR}"/0003-Fix-FTBFS-on-bytecode-architectures.patch \
		"${FILESDIR}"/0004-no-automagic.patch
	AT_M4DIR=support eautoreconf
}

src_configure() {
	econf \
		$(use_with gtk) \
		$(use_with pango pango-cairo) \
		$(use_with svg svg-cairo)
}

src_compile() {
	emake -j1
	use doc && emake doc
}

src_install() {
	findlib_src_install
	dodoc README ChangeLog
	if use examples; then
		insinto /usr/share/doc/${PF}/examples
		doins test/*.ml
	fi
	# ocamlfind support
	cat <<-EOF > META
		name = "${PN}"
		description = "${DESCRIPTION}"
		requires = "bigarray"
		version = "${PV}"
		archive(byte) = "cairo.cma"
		archive(native) = "cairo.cmxa"
	EOF
	if use gtk; then
		cat <<-EOF >> META
			package "lablgtk2" (
				requires = "cairo lablgtk2"
				archive(byte) = "cairo_lablgtk.cma"
				archive(native) = "cairo_lablgtk.cmxa"
			)
		EOF
	fi
	if use pango; then
		cat <<-EOF >> META
			package "pango" (
				requires = "cairo"
				archive(byte) = "pango_cairo.cma"
				archive(native) = "pango_cairo.cmxa"
			)
		EOF
	fi
	if use svg; then
		cat <<-EOF >> META
			package "svg" (
				requires = "cairo"
				archive(byte) = "svg_cairo.cma"
				archive(native) = "svg_cairo.cmxa"
			)
		EOF
	fi
	insinto /usr/$(get_libdir)/ocaml/cairo
	doins META
}
