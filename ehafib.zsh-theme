function current_path(){
    echo "%B%F{118}[%~]%f%b"
}

## thanks to http://qiita.com/takc923/items/c479e38112b913b7614a
## NEED git plugin

ZSH_THEME_GIT_PROMPT_ADDED="%F{34}%B+%b%f"
ZSH_THEME_GIT_PROMPT_DELETED="%F{196}%Bx%b%f"

ZSH_THEME_GIT_PROMPT_MODIFIED="%F{226}%B*%b%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{226}%B*%b%f"

ZSH_THEME_GIT_PROMPT_UNMERGED="%F{161}%B(unmerged)%b%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{161}%B(untracked)%b%f"

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{208}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{208}%B]%b%f"

function git_status(){
    [ $(current_branch) ] && echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)%f%b$(git_prompt_status)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function ret_status() {
    echo "%B%(?:%F{081}:%F{161}(%?%))\n%#%f%b "
}

PROMPT='  $(current_path) $(git_status) $(ret_status)'

## RPROMPT=''
RPROMPT=' %F{220}%D{[%H:%M:%S]}%f'

## memo
## %# : '%'
## %F{0-255} : color begin, %f : end
## %B : bold begin, %b : end
## %~ : current directory
## %? : returned value
