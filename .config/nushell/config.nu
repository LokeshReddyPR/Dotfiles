#version = "0.95.0"

# 1. Clear text color configurations
let my_theme = {
    separator: white
    header: cyan_bold
    filesize: blue
    date: purple
    row_index: cyan_bold
    shape_directory: cyan
    shape_filepath: cyan
    shape_table: blue_bold
}

# 2. Re-enable the smooth rounded table framework
$env.config = {
    show_banner: false
    color_config: $my_theme
    edit_mode: emacs
    table: {
        mode: rounded
        index_mode: always
        padding: { left: 1, right: 1 }
    }
}

# 3. Clean Shortcuts (Notice 'ls' is left native so it makes tables!)
alias c = clear
alias l = ls -a
alias tree = eza --tree --icons=always

# 4. Omerxx's Custom Tabular Explorer Command
def --env cx [arg] {
    cd $arg
    ls
}



# 5. Core Environment Injections
source ~/.zoxide.nu

# 6. Starship Prompt Initialization
use ~/.cache/starship/init.nu
