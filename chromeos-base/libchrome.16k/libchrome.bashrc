cros_pre_src_prepare_patches() {
  for patch_file in `ls ${RPI5_BASHRC_FILESDIR}/*.patch`; do
    einfo "apply patch:${patch_file}"
    patch -p1 < $patch_file
  done
}
