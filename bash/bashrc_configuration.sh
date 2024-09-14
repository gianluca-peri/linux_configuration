# To make this config work add the following line to your .bashrc:
# source /home/noumeno/linux_configuration/bash/bashrc_configuration.sh

# Nice structure for the prompt
export PS1='$(whoami)@$(hostname)[${PWD/*\//}]$ '

# Fixes the annoying highlighting of folders in ls
LS_COLORS+=':ow=01;33'

alias orbit_vault='rclone sync Obsidian_Vault pd:Obsidian_Vault -P'
alias docking_vault='rclone sync pd:Obsidian_Vault Obsidian_Vault -P'
