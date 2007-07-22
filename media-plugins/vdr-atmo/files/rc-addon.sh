# $Header: /usr/local/ssd/gentoo-x86/output/media-plugins/cvs-repo/gentoo-x86/media-plugins/vdr-atmo/files/Attic/rc-addon.sh,v 1.1 2007/07/22 15:50:38 hd_brummy Exp $
#
# rc-addon plugin-startup-skript for vdr-atmo
#
# Christian Gmeiner <christian.gmeiner@gmail.com>

plugin_pre_vdr_start() {

	: ${INPUT_DEVICE:=FFDVB}
	: ${OUTPUT_DEVICE:="SERIAL=/dev/ttyS1"}

	add_plugin_param "-i ${INPUT_DEVICE}"
	add_plugin_param "-o ${OUTPUT_DEVICE}"

}
