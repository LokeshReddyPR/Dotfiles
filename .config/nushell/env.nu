# ~/.config/nushell/env.nu

# Clear any old path scripts and use this clean Mac Homebrew path collector
$env.PATH = (
    $env.PATH 
    | split row (char esep) 
    | append "/opt/homebrew/bin"
    | append "/usr/local/bin"
    | append "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    | uniq
)

$env.STARSHIP_CONFIG = (($env.HOME) | path join ".config" "starship" "starship.toml")
mkdir ~/.cache/starship

# Force the specific, updated Homebrew path here:
/opt/homebrew/bin/starship init nu | save -f ~/.cache/starship/init.nu


# Initialize Zoxide natively for Nushell
zoxide init nushell --cmd cd | save -f ~/.zoxide.nu


