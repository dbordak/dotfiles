# Initialize Antigen
source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen use oh-my-zsh
#antigen use prezto

antigen bundles <<EOBUNDLES
	zsh-users/zsh-syntax-highlighting
	sharat87/zsh-vim-mode
	zsh-users/zsh-history-substring-search
	zsh-users/zsh-completions
EOBUNDLES

antigen theme agnoster

antigen apply
