# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header$

inherit perl-module

DESCRIPTION="Validation with simple chains of constraints"
HOMEPAGE="http://search.cpan.org/dist/${PN}/"
SRC_URI="mirror://cpan/authors/id/L/LY/LYOKATO/${P}.tar.gz"
LICENSE="|| ( Artistic GPL-2 )"

SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 m68k mips ppc ppc64 ppc-macos s390 sh sparc x86"
RESTRICT="nomirror"

IUSE=""
DEPEND="
	>=dev-perl/Class-Accessor-0.22
	>=dev-perl/Class-Inspector-1.13
	>=dev-perl/Class-Data-Inheritable-0.04
	>=dev-perl/UNIVERSAL-require-0.10
	dev-perl/MailTools
	>=dev-perl/Email-Valid-0.15
	>=dev-perl/Email-Valid-Loose-0.04
	>=dev-perl/Date-Calc-5.4
	>=dev-perl/Tie-IxHash-1.21
	>=dev-perl/yaml-0.39
	>=dev-perl/List-MoreUtils-0.16
	>=dev-perl/DateTime-Format-Strptime-1.0700
"
