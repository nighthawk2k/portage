# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-perl/Devel-StackTrace/Devel-StackTrace-1.20.ebuild,v 1.1 2008/10/26 08:08:23 tove Exp $

MODULE_AUTHOR=DROLSKY
inherit perl-module

DESCRIPTION="Devel-StackTrace module for perl"

LICENSE="|| ( Artistic GPL-2 )"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~sparc ~x86"
IUSE=""
SRC_TEST="do"

RDEPEND="dev-lang/perl
	virtual/perl-File-Spec"
DEPEND=">=dev-perl/module-build-0.28
	${RDEPEND}"

OPTIMIZE="$CFLAGS"
