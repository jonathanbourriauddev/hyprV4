if status is-interactive
    # Désactive le message de bienvenue
    set -g fish_greeting ""

    # Initialise Starship
    starship init fish | source
    
    # Affiche le résumé système
    fastfetch
end

# Tes Alias
alias ls="eza --icons --group-directories-first"
alias gs="git status"
