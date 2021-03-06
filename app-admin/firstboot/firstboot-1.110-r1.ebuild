# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-admin/firstboot/firstboot-1.4.19.ebuild,v 1.3 2007/10/15 09:35:28 dberkholz Exp $

EAPI=3

RESTRICT_PYTHON_ABIS="3.*"
PYTHON_DEPEND="2"

inherit python distutils rpm

# Revision of the RPM. Shouldn't affect us, as we're just grabbing the source
# tarball out of it
RPMREV="1"

DESCRIPTION="Initial system configuration utility"
HOMEPAGE="http://fedoraproject.org/wiki/FirstBoot"
SRC_URI="mirror://sabayon/${CATEGORY}/${P}-${RPMREV}.fc13.src.rpm"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="debug_grade_1 gtk"
RDEPEND="
	gtk? ( =dev-python/pygtk-2* )
	dev-python/rhpl
	app-admin/system-config-users
	app-admin/system-config-date
	sys-libs/libuser
	dev-python/python-ethtool"
DEPEND="${RDEPEND}
	sys-devel/gettext"
PDEPEND="app-admin/system-config-keyboard"

src_install() {
     if use debug_grade_1 ; then
   set -ex
       fi
	distutils_src_install
	# remove fedorish init script completely
	rm -r "${ED}"/etc/rc.d || die
}

pkg_postrm() {
	python_mod_cleanup /usr/share/${PN}
}

