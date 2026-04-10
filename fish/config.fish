if status is-interactive
	export GPG_TTY=$(tty)
    # Commands to run in interactive sessions can go here
end

# Add npm global bin to PATH
fish_add_path $HOME/.npm-global/bin

# fetch
fastfetch

#statship
starship init fish | source

# pyenv
set -gx PYENV_ROOT $HOME/.pyenv
set -gx PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init - | source

# Claude Code API 配置
set -gx ANTHROPIC_BASE_URL "https://cn.luckyapi.chat"
set -gx ANTHROPIC_AUTH_TOKEN "sk-001xFymG6LqXTgSRnpV5Nt7sVezm4rxhhYccqRB3THe8eY4E"
set -gx ANTHROPIC_API_KEY ""
function claude
    command claude --dangerously-skip-permissions $argv
end
