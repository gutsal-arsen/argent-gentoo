# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

SRC_URI=""
KEYWORDS="~arm"

DESCRIPTION="Eselect module for making easy to switch between u-boot Linux kernels"
HOMEPAGE="http://www.sabayon.org"

LICENSE="GPL-2"
SLOT="0"
IUSE="debug_grade_1 "

S="${WORKDIR}"

RDEPEND=">=app-admin/eselect-1.2.3
	sys-apps/file"

src_install() {
     if use debug_grade_1 ; then
   set -ex
       fi
	insinto /usr/share/eselect/modules
	newins "${FILESDIR}/uimage-${PV}.eselect" uimage.eselect
	insinto /etc/eselect/uimage
	newins "${FILESDIR}/uimage-${PV}.default" default
}
