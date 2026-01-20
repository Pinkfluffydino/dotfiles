if status is-interactive
    # Commands to run in interactive sessions can go here
end

# greeting
function fish_greeting
    echo Hello (set_color red)$USER!(set_color normal)
    echo Time : (set_color yellow)(date +%T)(set_color normal)
end

set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
set -gx PATH $HOME/.local/bin:$PATH

# aliases
alias hx="helix"

function ls
    command ls -lhF --time-style=long-iso --color=auto $argv
end

function cd
    set -l new_directory $argv
    if test (count $argv) -eq 0
        builtin cd $HOME
        return 0
    else
        builtin cd $new_directory
        ls
        return 0
    end
end

function mkdir
    command /usr/bin/mkdir $argv
    if test $status = 0
        set -l dirs (string match -v -r '^-' -- $argv)
        if set -q dirs[1]
            cd $dirs[-1] #Last dir created
        end
    end
end

# starship
starship init fish | source
