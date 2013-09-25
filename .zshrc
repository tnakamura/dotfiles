export EDITOR=vim       # エディタをvimに設定
export LANG=ja_JP.UTF-8 # 文字コードをUTF-8に設定

setopt no_beep          # ビープ音
setopt auto_cd          # ディレクトリ名の入力のみで移動

autoload -U compinit; compinit  # 補完機能を有効
