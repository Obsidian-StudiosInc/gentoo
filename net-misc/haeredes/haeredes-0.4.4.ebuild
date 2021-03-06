# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal

DESCRIPTION="Confirm delegation of NS and MX records"
HOMEPAGE="http://michael.orlitzky.com/code/haeredes.php"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# The only test suite requires network access.
RESTRICT="test"

RDEPEND=">=dev-haskell/cmdargs-0.10:=
	>=dev-haskell/dns-1.4:=
	>=dev-haskell/iproute-1.2:=
	>=dev-haskell/missingh-1.2:=
	>=dev-haskell/parallel-io-0.3:=
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/doctest-0.9
		>=dev-haskell/filemanip-0.3.6 )
"

src_install() {
	haskell-cabal_src_install
	doman "${S}/doc/man1/${PN}.1"
}
