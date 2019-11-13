# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

HOMEPAGE="https://www.devolo.co.uk/support/downloads/download/dlanr-200-av"
DESCRIPTION="Find and configure your Devolo (Ethernet via existing electrical wiring) dLAN devices"
#URI="https://github.com/Javeree/Devolo-dlan-linux.git"
EGIT_REPO_URI="https://github.com/Javeree/Devolo-dlan-linux.git"
#EGIT_REPO_URI=""git://github.com/Javeree/${P}.git
GIT_ECLASS="git-r3"

inherit "${GIT_ECLASS}"

LICENSE="EULA"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake LDFLAGS="${LDFLAGS}"
}

src_install(){
	dobin dlanlist
	dobin dlanpasswd
}
