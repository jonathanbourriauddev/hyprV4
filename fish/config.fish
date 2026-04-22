if status is-interactive
    set -g fish_greeting ""
    starship init fish | source

    # 1. On lance Zellij en premier s'il n'est pas là
    if not set -q ZELLIJ
        exec zellij
    end

    # 2. Une fois QU'ON EST DANS Zellij, on lance fastfetch
    # On utilise une petite astuce pour ne le lancer que sur le premier panneau
    if set -q ZELLIJ
        # On vérifie si c'est la session par défaut (optionnel mais plus propre)
        fastfetch
    end
end

# Created by `pipx` on 2026-04-22 07:08:36
set PATH $PATH /home/joe/.local/bin
