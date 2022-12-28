#SRC_URI:remove:erni = "file://wpa_supplicant.conf"
CONFFILES:${PN}:remove = "${sysconfdir}/wpa_supplicant.conf"

do_install:append() {
    rm ${D}${sysconfdir}/wpa_supplicant.conf
}
