# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Intel (R) PRO/Wireless 3945ABG Network Connection ucode"
HOMEPAGE="http://intellinuxwireless.org/?p=iwlwifi"
SRC_URI="http://intellinuxwireless.org/iwlwifi/downloads/iwlwifi-4965-ucode-${PV}.tgz"

LICENSE="ipw3945"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}/iwlwifi-4965-ucode-${PV}

src_install() {
	insinto /lib/firmware
	doins iwlwifi-4965.ucode
	dodoc README.iwlwifi-4965-ucode
}
