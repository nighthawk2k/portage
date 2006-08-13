# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit games distutils

KEYWORDS="~x86"

DESCRIPTION="A graphical and text-based sudoku game"
HOMEPAGE="http://pythonsudoku.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.zip"
LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="dev-python/pygtk
	dev-python/reportlab
	dev-python/imaging"

src_unpack() {
	unpack ${A}
	cd "${S}"
	epatch "${FILESDIR}/${PV}-setup_py-various_fix.patch"
	sed -i \
		-e 's#syscfg = pysdk.cfg#syscfg = /etc/games/pythonsudoku/pysdk.cfg#' \
		pythonsudoku/platform.cfg || die "fixing configfile path failed"
}

src_install() {
	newgamesbin pysdk.py pysdk || die "newgamesbin failed"
	distutils_src_install

	dohtml -r doc/*
	doman doc/pysdk.6
	dodoc doc/*.txt

	prepgamesdirs

	insinto /etc/games/pythonsudoku
	doins pysdk.cfg
}
