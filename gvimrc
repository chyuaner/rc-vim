" 載入vimrc
if filereadable("${HOME}/.vimrc")
  source ${HOME}/.vimrc
endif

set guioptions=T             " 顯示工具列
set guifont=Menlo:h14        " 設定圖形界面的字體
set guioptions+=e            " 顯示Tab方式為符合作業系統
