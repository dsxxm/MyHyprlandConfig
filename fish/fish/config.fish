if status is-interactive
	export GPG_TTY=$(tty)
    # Commands to run in interactive sessions can go here
end

# Add npm global bin to PATH
fish_add_path $HOME/.npm-global/bin

# fetch
fastfetch

#starship
starship init fish | source

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init - | source

# OpenClaw Completion
source "/home/bakaxxn/.openclaw/completions/openclaw.fish"
export PATH="$HOME/.local/bin:$PATH"
