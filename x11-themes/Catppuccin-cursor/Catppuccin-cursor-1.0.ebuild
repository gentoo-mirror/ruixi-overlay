EAPI=8

MY_PV="1.0"
MY_P="Catppuccin-cursor"
DESCRIPTION="Catppuccin-Cursor Theme"
HOMEPAGE="https://github.com/Ruixi-rebirth/fcitx5-catppuccin"
SRC_URI="https://github.com/Ruixi-rebirth/Catppuccin-cursor/releases/${MY_TAG}/${MY_P}.tar.bz2"
LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/Catppuccin-cursor"
src_install(){
    DICT_PATH="/usr/share/icons"
    insinto "${DICT_PATH}"
    doins -r ${S}
}
