set -U fish_greeting "🐟 blub 。。。"

bind \cs 'clear; commandline -f repaint'

abbr c "cd"
abbr s "sudo"

abbr m "timew"
abbr t "task"
abbr d "task del"
abbr n "task add"

abbr v "nvim"
abbr a "cd ~ && tmux new -A -s main"
abbr h "cd ~"
abbr g "git"
abbr f "ranger"

export NODE_PATH=~/.npm-packages/lib/node_modules

fish_add_path -m ~/.npm-packages/bin
fish_add_path -m ~/sync/bin
