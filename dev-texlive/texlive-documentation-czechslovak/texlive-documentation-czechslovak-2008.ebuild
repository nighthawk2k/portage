# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-texlive/texlive-documentation-czechslovak/texlive-documentation-czechslovak-2008.ebuild,v 1.2 2008/10/31 14:14:46 aballier Exp $

TEXLIVE_MODULE_CONTENTS="lshort-slovak texlive-cz collection-documentation-czechslovak
"
TEXLIVE_MODULE_DOC_CONTENTS="lshort-slovak.doc texlive-cz.doc "
TEXLIVE_MODULE_SRC_CONTENTS="texlive-cz.source "
inherit texlive-module
DESCRIPTION="TeXLive Czechslovak documentation"

LICENSE="GPL-2 LPPL-1.3 "
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE=""
DEPEND=">=dev-texlive/texlive-documentation-base-2008
"
RDEPEND="${DEPEND}"
