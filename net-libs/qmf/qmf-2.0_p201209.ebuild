# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/net-libs/cvs-repo/gentoo-x86/net-libs/qmf/qmf-2.0_p201209.ebuild,v 1.2 2012/05/03 13:19:57 pesa Exp $

EAPI=4

inherit qt4-r2

if [[ ${PV} == *9999* ]]; then
	inherit git-2
	EGIT_REPO_URI="git://gitorious.org/qt-labs/messagingframework.git
		https://git.gitorious.org/qt-labs/messagingframework.git"
else
	SRC_URI="http://dev.gentoo.org/~pesa/distfiles/${P}.tar.gz"
	S=${WORKDIR}/qt-labs-messagingframework
fi

DESCRIPTION="The Qt Messaging Framework"
HOMEPAGE="http://qt.gitorious.org/qt-labs/messagingframework"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug doc examples test"

RDEPEND="
	dev-libs/icu
	sys-libs/zlib
	>=x11-libs/qt-core-4.6.0:4
	>=x11-libs/qt-gui-4.6.0:4
	>=x11-libs/qt-sql-4.6.0:4
	examples? ( >=x11-libs/qt-webkit-4.6.0:4 )
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
	test? ( >=x11-libs/qt-test-4.6.0:4 )
	!!<net-libs/qmf-2.0_p201209
"

DOCS="CHANGES"

PATCHES=(
	"${FILESDIR}/${PN}-tests.patch"
)

src_prepare() {
	qt4-r2_src_prepare

	# fix libdir
	find "${S}" -name '*.pro' -type f -print0 | xargs -0 \
		sed -i -re "s:/lib(/|$):/$(get_libdir)\1:" || die

	sed -i	-e '/benchmarks/d' \
		-e '/tests/d' \
		messagingframework.pro || die

	if ! use examples; then
		sed -i -e '/examples/d' messagingframework.pro || die
	fi
}

src_configure() {
	eqmake4 QMF_INSTALL_ROOT="${EPREFIX}/usr"
}

src_test() {
	echo ">>> Test phase [QTest]: ${CATEGORY}/${PF}"
	cd "${S}"/tests

	einfo "Building tests"
	eqmake4 QMF_INSTALL_ROOT="${EPREFIX}/usr"
	emake

	einfo "Running tests"
	export QMF_DATA="${T}"
	local fail=false test=
	for test in locks longstream longstring python_email qcop qlogsystem \
			qmailaddress qmailcodec qmaillog qmailmessage \
			qmailmessagebody qmailmessageheader qmailmessagepart \
			qmailnamespace qprivateimplementation; do
		if ! LC_ALL=C ./tst_${test}/tst_${test}; then
			eerror "'${test}' test failed!"
			fail=true
		fi
		echo
	done
	${fail} && die "some tests have failed!"
}

src_install() {
	qt4-r2_src_install

	if use doc; then
		emake docs

		dohtml -r doc/html/*
		dodoc doc/html/qmf.qch
		docompress -x /usr/share/doc/${PF}/qmf.qch
	fi
}
