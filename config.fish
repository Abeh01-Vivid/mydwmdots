if status is-interactive
    # Commands to run in interactive sessions can go here
    fastfetch
    
    # ── Aliases reminder (two columns) ───────────────────────────
    echo (set_color --bold cyan)"  Aliases"(set_color normal)
    echo (set_color brblack)"  ─────────────────────────────────────────────────────────────────"(set_color normal)
    echo (set_color --bold green)"  eopkg"(set_color normal)"                              "(set_color --bold magenta)"  nix"(set_color normal)
    echo (set_color brblack)"  ──────────────────────────────     ─────────────────────────────"(set_color normal)
    echo (set_color yellow)"  pi"(set_color normal)"    → sudo eopkg it             "(set_color yellow)"  ni"(set_color normal)"   → nix-env -iA nixpkgs.<pkg>"
    echo (set_color yellow)"  pu"(set_color normal)"    → sudo eopkg upgrade        "(set_color yellow)"  nr"(set_color normal)"   → nix-env -e <pkg>"
    echo (set_color yellow)"  pr"(set_color normal)"    → sudo eopkg remove         "(set_color yellow)"  ns"(set_color normal)"   → nix-env -qaP | grep"
    echo (set_color yellow)"  ps"(set_color normal)"    → sudo eopkg search         "(set_color yellow)"  nu"(set_color normal)"   → update all nix pkgs"
    echo (set_color yellow)"  pli"(set_color normal)"   → eopkg list-installed      "(set_color yellow)"  nl"(set_color normal)"   → list nix installed"
    echo (set_color yellow)"  pcc"(set_color normal)"   → sudo eopkg delete-cache   "(set_color yellow)"  ngc"(set_color normal)"  → nix garbage collect"
    echo (set_color brblack)"  ──────────────────────────────     ─────────────────────────────"(set_color normal)
    echo (set_color --bold magenta)"  nix (flakes)"(set_color normal)"                      "(set_color --bold blue)"  home-manager"(set_color normal)
    echo (set_color brblack)"  ──────────────────────────────     ─────────────────────────────"(set_color normal)
    echo (set_color yellow)"  nsh"(set_color normal)"   → nix shell nixpkgs#<pkg>  "(set_color yellow)"  hms"(set_color normal)"   → home-manager switch"
    echo (set_color yellow)"  nrun"(set_color normal)"  → nix run nixpkgs#<pkg>    "(set_color yellow)"  hme"(set_color normal)"   → edit home.nix"
    echo (set_color yellow)"  nfl"(set_color normal)"   → nix flake update         "(set_color yellow)"  hmn"(set_color normal)"   → hm news"
    echo (set_color yellow)"  nsr"(set_color normal)"   → nix search nixpkgs       "(set_color yellow)"  hmp"(set_color normal)"   → list hm packages"
    echo (set_color brblack)"  ──────────────────────────────     ─────────────────────────────"(set_color normal)
    echo (set_color --bold cyan)"  misc"(set_color normal)
    echo (set_color brblack)"  ─────────────────────────────────────────────────────────────────"(set_color normal)
    echo (set_color yellow)"  ll  lt"(set_color normal)"  → eza list/tree    "(set_color yellow)"  cat"(set_color normal)"  → bat    "(set_color yellow)"  v"(set_color normal)"  → nvim"
    echo (set_color yellow)"  ..  ..."(set_color normal)"  → cd up 1/2 dirs  "(set_color yellow)"  cls"(set_color normal)"  → clear  "(set_color yellow)"  ff"(set_color normal)" → fastfetch"
    echo (set_color yellow)"  rdwm"(set_color normal)"              → restart dwm"(set_color normal)
    echo (set_color yellow)"  rebuild"(set_color normal)"           → recompile & install dwm"(set_color normal)
    echo (set_color brblack)"  ─────────────────────────────────────────────────────────────────"(set_color normal)
    echo ""

    # ── Package management (eopkg / Solus) ────────────────────────
    alias pi='sudo eopkg it'
    alias pu='sudo eopkg upgrade'
    alias pr='sudo eopkg remove'
    alias ps='sudo eopkg search'
    alias pli='eopkg list-installed'
    alias pcc='sudo eopkg delete-cache'

    # ── Nix ───────────────────────────────────────────────────────
    alias ni='nix-env -iA nixpkgs.'
    alias nr='nix-env -e'
    alias nu='nix-channel --update; and nix-env -u'
    alias ns='nix-env -qaP | grep'
    alias nl='nix-env -q'
    alias ngc='nix-collect-garbage -d'

    # ── Nix (flakes / modern CLI) ─────────────────────────────────
    alias nsh='nix shell nixpkgs#'
    alias nrun='nix run nixpkgs#'
    alias nfl='nix flake update --flake ~/.config/home-manager'
    alias nsr='nix search nixpkgs'

    # ── Home Manager ──────────────────────────────────────────────
    alias hms='home-manager switch --flake ~/.config/home-manager#abeh'
    alias hme='nvim ~/.config/home-manager/home.nix'
    alias hmn='home-manager news --flake ~/.config/home-manager#abeh'
    alias hmp='home-manager packages'

    # ── Navigation ────────────────────────────────────────────────
    alias ..='cd ..'
    alias ...='cd ../..'
    alias cls='clear'

    # ── Better defaults ───────────────────────────────────────────
    alias cat='bat'
    alias ll='eza -lah --icons'
    alias ls='eza --icons'
    alias lt='eza --tree --icons'
    alias v='nvim'
    alias vi='nvim'

    # ── Git shortcuts ─────────────────────────────────────────────
    alias gs='git status'
    alias ga='git add .'
    alias gc='git commit -m'
    alias gp='git push'
    alias gl='git log --oneline --graph --decorate'

    # ── System ────────────────────────────────────────────────────
    alias ff='fastfetch'
    alias free='free -h'
    alias df='df -h'
    alias cpuinfo='grep "model name" /proc/cpuinfo | head -1'
    alias off='sudo shutdown now'

    # ── dwm ───────────────────────────────────────────────────────
    alias rdwm='kill -HUP $(xdotool getwindowpid $(xdotool getactivewindow))'
    alias rebuild='cd ~/.local/src/dwm && sudo make clean install && cd -'

    starship init fish | source
end

# ── Nix profile ───────────────────────────────────────────────────
if test -e ~/.nix-profile/etc/profile.d/nix.fish
    source ~/.nix-profile/etc/profile.d/nix.fish
end

