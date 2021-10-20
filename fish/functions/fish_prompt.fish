function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus

	set -g __fish_git_prompt_shorten_branch_len 2

    set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end
	
	set -l prompt_status (__fish_print_pipestatus "[" "]" "|" (set_color $fish_color_status) (set_color --bold $fish_color_status) $last_pipestatus)

    echo -n -s \
		"$USER" @ (prompt_hostname) ' ' \
		(set_color $color_cwd) (prompt_pwd) \
		(set_color $fish_color_quote) (fish_vcs_prompt) ' '\
		$prompt_status \
        (set_color normal) "$suffix "
end
