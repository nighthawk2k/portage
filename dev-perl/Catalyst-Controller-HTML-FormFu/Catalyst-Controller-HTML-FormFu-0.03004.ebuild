# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Catalyst controller for HTML::FormFu framework"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/C/CF/CFRANKS/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc sparc-fbsd x86 x86-fbsd"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	>=dev-perl/Catalyst-Runtime-5.70
	dev-perl/Catalyst-Component-InstancePerContext
	dev-perl/Config-Any
	>=dev-perl/HTML-FormFu-0.03000
	dev-perl/Regexp-Assemble
	dev-perl/Task-Weaken
"

