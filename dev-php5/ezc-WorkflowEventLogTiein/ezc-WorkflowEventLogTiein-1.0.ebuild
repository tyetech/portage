# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /usr/local/ssd/gentoo-x86/output/dev-php5/cvs-repo/gentoo-x86/dev-php5/ezc-WorkflowEventLogTiein/Attic/ezc-WorkflowEventLogTiein-1.0.ebuild,v 1.1 2007/08/30 14:00:28 jokey Exp $

inherit php-ezc

DESCRIPTION="This eZ component contains the EventLog listener for the Workflow component."
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="${RDEPEND}
	>=dev-php5/ezc-EventLog-1.1
	>=dev-php5/ezc-Workflow-1.0.1"
