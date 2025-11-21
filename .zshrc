# ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
# ▐                                                     ▌
# ▐                                                     ▌
# ▐        ███████╗███████╗██╗  ██╗██████╗  ██████╗     ▌
# ▐        ╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝     ▌
# ▐          ███╔╝ ███████╗███████║██████╔╝██║          ▌
# ▐         ███╔╝  ╚════██║██╔══██║██╔══██╗██║          ▌
# ▐     ██╗███████╗███████║██║  ██║██║  ██║╚██████╗     ▌
# ▐     ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝     ▌
# ▐                                                     ▌
# ▐                                                     ▌
# ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌

# System-wide profile for interactive zsh(1) shells.

# Setup user specific overrides for this in ~/.zshrc. See zshbuiltins(1)
# and zshoptions(1) for more details.

# Custom "Terminal" prompt
# System-wide profile for interactive zsh(1) shells.

# Setup user specific overrides for this in ~/.zshrc. See zshbuiltins(1)
# and zshoptions(1) for more details.

# ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
# ▐														▌
# ▐  				PROMPT  Settings					▌
# ▐ 													▌
# ▐ 			MyTerm prompt Settings					▌
# ▐ 													▌
# ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌

PS1="%F{red}%n%f@$(scutil --get LocalHostName) %F{yellow}%1~%f %# "

# ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
# ▐                                                     ▌
# ▐                 									▌
# ▐               Colorful ls command                   ▌
# ▐             										▌
# ▐                                                     ▌
# ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌

export CLICOLOR=1

# ▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
# ▐                                                     ▌
# ▐                                                     ▌
# ▐                    Git Settings                     ▌
# ▐                                                     ▌
# ▐                                                     ▌
# ▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌

# Autocomplete
autoload -Uz compinit && compinit

# Show branch name
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=%F{green}%B\$vcs_info_msg_0_%b%f
# PROMPT=\$vcs_info_msg_0_'%# '
zstyle ':vcs_info:git:*' formats '%b'