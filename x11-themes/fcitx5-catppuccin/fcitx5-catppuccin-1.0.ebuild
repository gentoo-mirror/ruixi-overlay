EAPI=8

MY_TAG="1.0"
MY_P="Catppuccin"
DESCRIPTION="Fcitx5 Catppuccin Theme"
HOMEPAGE="https://github.com/Ruixi-rebirth/fcitx5-catppuccin"
SRC_URI="https://github.com/Ruixi-rebirth/fcitx5-catppuccin/releases/download/${MY_TAG}/${MY_P}.tar.bz2"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${DISTDIR}"
W="${PORTAGE_BUILDDIR}/work"
src_unpack() {
    unpack "${MY_P}.tar.bz2"
}
src_install(){
    DICT_PATH="/usr/share/fcitx5/themes"
    insinto "${DICT_PATH}"
    doins -r "${W}"/*
}
