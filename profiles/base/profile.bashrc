rpi5_stack_bashrc() {
  local cfg cfgd
  cfgd="/mnt/host/source/src/overlays/project-rpi5/${CATEGORY}/${PN}"
  for cfg in ${PN} ${P} ${PF} ; do
    cfg="${cfgd}/${cfg}.bashrc"
    [[ -f ${cfg} ]] && . "${cfg}"
  done

  export RPI5_BASHRC_FILESDIR="${cfgd}/files"
}

rpi5_stack_bashrc
