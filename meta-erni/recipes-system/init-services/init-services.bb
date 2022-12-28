DESCRIPTION = "Setup services files"
SECTION = "Init"
LICENSE = "CLOSED"
FILESEXTRAPATHS:append:erni = " ${THISDIR}/files"

SRC_URI = " \
    file://wifi-up.service \
    "

FILES:${PN} = " \
    ${base_libdir}/systemd/system/wifi-up.service \
    ${sysconfdir}/systemd/system/default.target.wants \
    "

do_install() {
    install -d ${D}${base_libdir}/systemd/system/
    install -d ${D}${sysconfdir}/systemd/system/default.target.wants/

    # Install wifi service
    install -m 0755 ${WORKDIR}/wifi-up.service ${D}${base_libdir}/systemd/system/wifi-up.service
    ln -r -s ${D}${base_libdir}/systemd/system/wifi-up.service  ${D}${sysconfdir}/systemd/system/default.target.wants/
}