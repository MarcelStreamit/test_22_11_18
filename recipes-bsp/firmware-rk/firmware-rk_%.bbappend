#

DESCRIPTION = "Rockchip firmware such as for the WIFI, BT, replaced by manifest"

LICENSE = "proprietary-binary"
#LIC_FILES_CHKSUM = "file://LICENSE.TXT;md5=564e729dd65db6f65f911ce0cd340cf9"
LIC_FILES_CHKSUM = "file://LICENSE.TXT"

#SRCREV = "${AUTOREV}"
#SRC_URI = ""
S = "${TOPDIR}/../rkbin"

do_install () {
	install -d ${D}/system/etc/firmware/
	cp -rf ${S}/firmware/wifi/* ${D}/system/etc/firmware/

	install -d ${D}/etc/firmware/
	cp -rf ${S}/firmware/bluetooth/*.hcd ${D}/etc/firmware/
}
