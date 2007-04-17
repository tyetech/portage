# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-mplayer/files/Attic/rc-addon.sh,v 1.2 2007/04/17 12:50:07 zzam Exp $
#
# rc-addon plugin-startup-skript for vdr-mplayer
#

MPLAYER_PLUGIN_MOUNT="/usr/share/vdr/mplayer/bin/mount-mplayer.sh"
MPLAYER_PLUGIN_CALL="/usr/share/vdr/mplayer/bin/mplayer.sh"

plugin_pre_vdr_start() {

    add_plugin_param "-m ${MPLAYER_PLUGIN_MOUNT}"
    add_plugin_param "-M ${MPLAYER_PLUGIN_CALL}"
				
}
