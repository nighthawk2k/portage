# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/games-arcade/lbreakout/lbreakout-010315.ebuild,v 1.8 2008/09/06 18:26:02 mr_bones_ Exp $

inherit games

DESCRIPTION="Breakout clone written with the SDL library"
HOMEPAGE="http://lgames.sourceforge.net/"
SRC_URI="mirror://sourceforge/lgames/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ia64 ppc x86"
IUSE=""

DEPEND=">=media-libs/libsdl-1.1.5"

src_unpack() {
	unpack ${A}
	cd "${S}"
	sed -i \
		-e '/^sdir=/s:$datadir/games:$datadir:' \
		-e '/^hdir=/s:/var/lib/games:$localstatedir:' \
		configure \
		|| die "sed failed"
}

src_install() {
	dodir "${GAMES_STATEDIR}"
	emake DESTDIR="${D}" install || die "make install failed"
	dodoc AUTHORS README ChangeLog
	dohtml lbreakout/manual/*
	prepgamesdirs
}
