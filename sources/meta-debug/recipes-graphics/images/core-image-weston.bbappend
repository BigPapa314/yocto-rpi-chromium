
IMAGE_FEATURES:append = " dbg-pkgs src-pkgs tools-debug"

SRC_FILE := "${THISDIR}/files/chromium-wrapper.sh"

ROOTFS_POSTPROCESS_COMMAND:append = " add_gdb_to_chromium_wrapper; "
add_gdb_to_chromium_wrapper() {
  rm ${IMAGE_ROOTFS}/usr/lib/chromium/chromium-wrapper
  install -m 0755 ${SRC_FILE} ${IMAGE_ROOTFS}/usr/lib/chromium/chromium-wrapper
}

