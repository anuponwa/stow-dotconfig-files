if status is-interactive
    # Commands to run in interactive sessions can go here
    alias ls='eza --group-directories-first --icons'
    alias ll='eza -l --git --group-directories-first --icons'
    alias la='eza -la --git --group-directories-first --icons'
    alias lt='eza -Tl --git --icons'
end
