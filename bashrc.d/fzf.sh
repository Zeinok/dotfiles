export FZF_COMPLETION_TRIGGER='?'
export FZF_DEFAULT_COMMAND='fd --hidden --type f'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

_fzf_compgen_path() {
	fd --hidden --follow --exclude ".git" . "%1" 
}

_fzf_compgen_dir() {
	fd --type d --hidden --follow --exclude ".git" . "$1"
}

. /usr/share/doc/fzf/completion.bash
