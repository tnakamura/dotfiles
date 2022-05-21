export EDITOR=vim       # エディタをvimに設定
export LANG=ja_JP.UTF-8 # 文字コードをUTF-8に設定

setopt no_beep          # ビープ音
setopt auto_cd          # ディレクトリ名の入力のみで移動

autoload -U compinit; compinit  # 補完機能を有効

# プロンプトにカレントディレクトリを表示
PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

# コマンド履歴機能を設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups # コマンドの重複不可
setopt share_history # コマンド履歴データを共有する

# Homebrew でインストールした Vim を使う
export PATH="/usr/local/bin:$PATH"

# alias の設定
alias g='cd $(ghq list -p | peco)'

# ghq
export GHQ_ROOT="$HOME/src"

# rbenv
eval "$(rbenv init -)"

# fastlane
export PATH="$HOME/.fastlane/bin:$PATH"

# NVS
export NVS_HOME="$HOME/.nvs"
[ -s "$NVS_HOME/nvs.sh" ] && . "$NVS_HOME/nvs.sh"
nvs auto on

# .NET
export PATH="$HOME/.dotnet/tools:$PATH"

