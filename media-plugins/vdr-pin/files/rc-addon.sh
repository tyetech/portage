# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-pin/files/Attic/rc-addon.sh,v 1.1 2006/04/12 18:56:45 hd_brummy Exp $
#
# rc-addon-script for plugin pin
#

# DIR should dont exist on plugin start

[[ -e /etc/vdr/plugins/pin ]] && rm -r /etc/vdr/plugins/pin
