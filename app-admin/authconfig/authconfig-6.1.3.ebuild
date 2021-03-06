# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils python

DESCRIPTION="Command line tool for setting up authentication from network services"
HOMEPAGE="https://fedorahosted.org/authconfig"
SRC_URI="https://fedorahosted.org/releases/a/u/${PN}/${P}.tar.bz2"
LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug_grade_1 "

DEPEND="dev-libs/glib
	sys-devel/gettext
	dev-util/intltool
	dev-util/desktop-file-utils
	dev-perl/XML-Parser"
RDEPEND="${DEPEND} dev-libs/newt"

src_install() {
     if use debug_grade_1 ; then
   set -ex
       fi
	emake DESTDIR="${D}" install || die "install failed"
}
