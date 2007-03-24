# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

ESVN_REPO_URI="https://svn.musicpd.org/ncmpc/branches/tradiaz/"
inherit subversion autotools

DESCRIPTION="A branch for fixes and enhancements to ncmpc, a client for the Music Player Daemon (MPD)"
HOMEPAGE="http://www.musicpd.org/?page=ncmpc"
LICENSE="GPL-2"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~mips ~ppc ~ppc64 ~ppc-macos ~s390 ~sh ~sparc ~sparc-fbsd ~x86 ~x86-fbsd"
SLOT="0"
IUSE="artist-screen clock-screen debug mouse key-screen lyrics-screen search-screen nls raw-mode"

DEPEND="virtual/libc
        sys-libs/ncurses
        dev-libs/popt
        >=dev-libs/glib-2.4
	net-misc/curl
	!media-sound/ncmpc
	!media-sound/ncmpc-live"

pkg_setup() {
	        use search-screen && einfo "Please note that the search-screen is
			experimental"
}

src_unpack() {
	subversion_src_unpack
	AT_NOELIBTOOLIZE="yes" eautoreconf
}

src_compile() {
	econf \
		$(use_enable artist-screen) \
		$(use_enable clock-screen) \
		$(use_enable debug) \
		$(use_enable mouse) \
		$(use_enable key-screen) \
		$(use_enable lyrics-screen) \
		$(use_enable search-screen) \
		$(use_with nls) \
		$(use_with raw-mode)

		emake || die "make failed"
}																																	

src_install() {
       make install DESTDIR=${D} docdir=/usr/share/doc/${PF} \
               || die "install failed"

       prepalldocs
}
