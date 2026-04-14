function fish_right_prompt
	set -g __fish_git_prompt_shorten_branch_len 18
    set_color yellow
    echo (fish_vcs_prompt)
    set_color normal
end
