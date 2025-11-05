if status is-interactive
    # Commands to run in interactive sessions can go here
end

#greeting
function fish_greeting
    echo Hello (set_color red)$USER!(set_color normal)
    echo Time : (set_color yellow)(date +%T)(set_color normal)
end

#perl use english locale 
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

#aliases
#ls
alias ls="ls -lh"
alias hx="helix"

#starship
starship init fish | source 
