# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

inherit qt3 eutils

DESCRIPTION="A QT3 user interface for the music player daemon"
HOMEPAGE="http://www.coonsden.com/main.htm"
LICENSE="GPL-2"
## Homepage doesn't allow wget downloads; I personally host the same tarball
SRC_URI="http://musicpd.org/~avuton/${PN/q/Q}${PV}src.tar.gz"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~ppc-macos ~s390 ~sh ~sparc ~sparc-fbsd ~x86 ~x86-fbsd"
SLOT="0"
IUSE=""
DEPEND="${RDEPEND}
	$(qt_min_version 3.1)"
RDEPEND="${DEPEND}"
RESTRICT="primaryuri"

## I know, this is _not_ a joke, it gets worse everytime this joker releases.
S="${WORKDIR}/${PN/q/Q}${PV}src/${PN/q/Q}${PV}src/${PN/q/Q}${PV}"

src_compile() {
	econf || die "econf failed"
	eqmake3 || die "eqmake failed"
	sed -ie 's%^prefix.*=.*%prefix = ${D}%' Makefile || die "sed failed"
	emake || die "emake failed"
}

src_install() {
	make_desktop_entry "${PN}" "Quimup"
	newicon images/mn_icon.png ${PN}.png
	dobin quimup
}
