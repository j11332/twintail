# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Wayland protocol files"
HOMEPAGE="https://wayland.freedesktop.org/"

EGIT_REPO_URI="https://github.com/NVIDIA/${PN}"
inherit git-r3

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="dev-libs/wayland"
RDEPEND="${DEPEND}"
BDEPEND="virtual/pkgconfig"

src_prepare() {
	default
}
src_install() {
	mkdir -p ${D}/usr/include/EGL
	mkdir -p ${D}/usr/lib/pkgconfig
	install -m 0644 -t ${D}/usr/include/EGL interface/*.h
	install -m 0644 -t ${D}/usr/lib/pkgconfig/ ./*.pc
}
