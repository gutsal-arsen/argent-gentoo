# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

MODULE_AUTHOR=DANIEL
inherit perl-module

DESCRIPTION="An OO interface to Musepack file information and APE tag fields"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug_grade_1 test"

COMMON_DEPEND=">=dev-perl/Audio-Scan-0.85"
RDEPEND="${COMMON_DEPEND}"
DEPEND="${COMMON_DEPEND}"

SRC_TEST=do
