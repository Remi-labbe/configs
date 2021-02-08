set -U fish_color_git_clean white
set -U fish_color_git_dirty red
set -U fish_color_git_staged yellow

function fish_prompt_git --description 'Write out the git prompt'
  set -l branch (git symbolic-ref --quiet --short HEAD 2>/dev/null)
  if test -z $branch
    return
  end

  printf '('

  set -l index (git status --porcelain 2>/dev/null)
  if test -z "$index"
    set_color $fish_color_git_clean
    printf $branch
    set_color normal
    printf ')'
    return
  end

  git diff-index --quiet --cached HEAD 2>/dev/null
  set -l staged $status
  if test $staged = 1
    set_color $fish_color_git_staged
  else
    set_color $fish_color_git_dirty
  end

  printf $branch

  set_color normal
  printf ')'
end
