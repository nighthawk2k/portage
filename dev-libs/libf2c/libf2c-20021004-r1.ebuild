# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-libs/libf2c/libf2c-20021004-r1.ebuild,v 1.14 2008/11/06 15:05:15 bicatali Exp $

inherit toolchain-funcs eutils

DESCRIPTION="Library that converts FORTRAN to C source."
HOMEPAGE="ftp://ftp.netlib.org/f2c/index.html"
SRC_URI="ftp://ftp.netlib.org/f2c/${PN}.zip"

LICENSE="libf2c"
SLOT="0"
KEYWORDS="alpha amd64 ppc ppc64 sparc x86"
IUSE=""

DEPEND="virtual/libc
	app-arch/unzip"

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}"/${P}-shared-object.patch
}

src_compile() {
	emake -f makefile.u all \
		CFLAGS="${CFLAGS}" \
		CC="$(tc-getCC)" \
		|| die
}

src_install () {
	dolib.a libf2c.a
	dolib libf2c.so
	insinto /usr/include
	doins f2c.h
	dodoc README Notice
}
