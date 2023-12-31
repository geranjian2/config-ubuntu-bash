VIRTUAL_ENV_DISABLE_PROMPT=true

# PROMPT
if [ ! -n "${WILDCHERRY_PROMPT_CHAR+1}" ]; then
  WILDCHERRY_PROMPT_CHAR="\$"
fi
if [ ! -n "${WILDCHERRY_PROMPT_ROOT+1}" ]; then
  WILDCHERRY_PROMPT_ROOT=true
fi

# STATUS
if [ ! -n "${WILDCHERRY_STATUS_SHOW+1}" ]; then
  WILDCHERRY_STATUS_SHOW=true
fi
if [ ! -n "${WILDCHERRY_STATUS_EXIT_SHOW+1}" ]; then
  WILDCHERRY_STATUS_EXIT_SHOW=false
fi
if [ ! -n "${WILDCHERRY_STATUS_BG+1}" ]; then
  WILDCHERRY_STATUS_BG=green
fi
if [ ! -n "${WILDCHERRY_STATUS_ERROR_BG+1}" ]; then
  WILDCHERRY_STATUS_ERROR_BG=red
fi
if [ ! -n "${WILDCHERRY_STATUS_FG+1}" ]; then
  WILDCHERRY_STATUS_FG=white
fi

# TIME
if [ ! -n "${WILDCHERRY_TIME_SHOW+1}" ]; then
  WILDCHERRY_TIME_SHOW=true
fi
if [ ! -n "${WILDCHERRY_TIME_BG+1}" ]; then
  WILDCHERRY_TIME_BG=magenta
fi
if [ ! -n "${WILDCHERRY_TIME_FG+1}" ]; then
  WILDCHERRY_TIME_FG=cyan
fi

# VIRTUALENV
if [ ! -n "${WILDCHERRY_VIRTUALENV_SHOW+1}" ]; then
  WILDCHERRY_VIRTUALENV_SHOW=true
fi
if [ ! -n "${WILDCHERRY_VIRTUALENV_BG+1}" ]; then
  WILDCHERRY_VIRTUALENV_BG=yellow
fi
if [ ! -n "${WILDCHERRY_VIRTUALENV_FG+1}" ]; then
  WILDCHERRY_VIRTUALENV_FG=white
fi
if [ ! -n "${WILDCHERRY_VIRTUALENV_PREFIX+1}" ]; then
  WILDCHERRY_VIRTUALENV_PREFIX=🐍
fi

# NVM
if [ ! -n "${WILDCHERRY_NVM_SHOW+1}" ]; then
  WILDCHERRY_NVM_SHOW=false
fi
if [ ! -n "${WILDCHERRY_NVM_BG+1}" ]; then
  WILDCHERRY_NVM_BG=green
fi
if [ ! -n "${WILDCHERRY_NVM_FG+1}" ]; then
  WILDCHERRY_NVM_FG=white
fi
if [ ! -n "${WILDCHERRY_NVM_PREFIX+1}" ]; then
  WILDCHERRY_NVM_PREFIX="⬡ "
fi

# RVM
if [ ! -n "${WILDCHERRY_RVM_SHOW+1}" ]; then
  WILDCHERRY_RVM_SHOW=true
fi
if [ ! -n "${WILDCHERRY_RVM_BG+1}" ]; then
  WILDCHERRY_RVM_BG=magenta
fi
if [ ! -n "${WILDCHERRY_RVM_FG+1}" ]; then
  WILDCHERRY_RVM_FG=white
fi
if [ ! -n "${WILDCHERRY_RVM_PREFIX+1}" ]; then
  WILDCHERRY_RVM_PREFIX=♦️
fi

# DIR
if [ ! -n "${WILDCHERRY_DIR_SHOW+1}" ]; then
  WILDCHERRY_DIR_SHOW=true
fi
if [ ! -n "${WILDCHERRY_DIR_BG+1}" ]; then
  WILDCHERRY_DIR_BG=blue
fi
if [ ! -n "${WILDCHERRY_DIR_FG+1}" ]; then
  WILDCHERRY_DIR_FG=yellow
fi
if [ ! -n "${WILDCHERRY_DIR_CONTEXT_SHOW+1}" ]; then
  WILDCHERRY_DIR_CONTEXT_SHOW=false
fi
if [ ! -n "${WILDCHERRY_DIR_EXTENDED+1}" ]; then
  WILDCHERRY_DIR_EXTENDED=true
fi

# GIT
if [ ! -n "${WILDCHERRY_GIT_SHOW+1}" ]; then
  WILDCHERRY_GIT_SHOW=true
fi
if [ ! -n "${WILDCHERRY_GIT_BG+1}" ]; then
  WILDCHERRY_GIT_BG=white
fi
if [ ! -n "${WILDCHERRY_GIT_FG+1}" ]; then
  WILDCHERRY_GIT_FG=magenta
fi
if [ ! -n "${WILDCHERRY_GIT_EXTENDED+1}" ]; then
  WILDCHERRY_GIT_EXTENDED=true
fi

# CONTEXT
if [ ! -n "${WILDCHERRY_CONTEXT_SHOW+1}" ]; then
  WILDCHERRY_CONTEXT_SHOW=false
fi
if [ ! -n "${WILDCHERRY_CONTEXT_BG+1}" ]; then
  WILDCHERRY_CONTEXT_BG=black
fi
if [ ! -n "${WILDCHERRY_CONTEXT_FG+1}" ]; then
  WILDCHERRY_CONTEXT_FG=default
fi

# GIT PROMPT
if [ ! -n "${WILDCHERRY_GIT_PREFIX+1}" ]; then
  ZSH_THEME_GIT_PROMPT_PREFIX=" \ue0a0 "
else
  ZSH_THEME_GIT_PROMPT_PREFIX=$WILDCHERRY_GIT_PREFIX
fi
if [ ! -n "${WILDCHERRY_GIT_SUFFIX+1}" ]; then
  ZSH_THEME_GIT_PROMPT_SUFFIX=""
else
  ZSH_THEME_GIT_PROMPT_SUFFIX=$WILDCHERRY_GIT_SUFFIX
fi
if [ ! -n "${WILDCHERRY_GIT_DIRTY+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DIRTY=" 💀 "
else
  ZSH_THEME_GIT_PROMPT_DIRTY=$WILDCHERRY_GIT_DIRTY
fi
if [ ! -n "${WILDCHERRY_GIT_CLEAN+1}" ]; then
  ZSH_THEME_GIT_PROMPT_CLEAN=" 🐋"
else
  ZSH_THEME_GIT_PROMPT_CLEAN=$WILDCHERRY_GIT_CLEAN
fi
if [ ! -n "${WILDCHERRY_GIT_ADDED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_ADDED=" 💅"
else
  ZSH_THEME_GIT_PROMPT_ADDED=$WILDCHERRY_GIT_ADDED
fi
if [ ! -n "${WILDCHERRY_GIT_MODIFIED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_MODIFIED=" 🐙"
else
  ZSH_THEME_GIT_PROMPT_MODIFIED=$WILDCHERRY_GIT_MODIFIED
fi
if [ ! -n "${WILDCHERRY_GIT_DELETED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DELETED=" 💥"
else
  ZSH_THEME_GIT_PROMPT_DELETED=$WILDCHERRY_GIT_DELETED
fi
if [ ! -n "${WILDCHERRY_GIT_UNTRACKED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_UNTRACKED=" 🐬"
else
  ZSH_THEME_GIT_PROMPT_UNTRACKED=$WILDCHERRY_GIT_UNTRACKED
fi
if [ ! -n "${WILDCHERRY_GIT_RENAMED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_RENAMED=" 👉"
else
  ZSH_THEME_GIT_PROMPT_RENAMED=$WILDCHERRY_GIT_RENAMED
fi
if [ ! -n "${WILDCHERRY_GIT_UNMERGED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_UNMERGED=" 👊"
else
  ZSH_THEME_GIT_PROMPT_UNMERGED=$WILDCHERRY_GIT_UNMERGED
fi
if [ ! -n "${WILDCHERRY_GIT_AHEAD+1}" ]; then
  ZSH_THEME_GIT_PROMPT_AHEAD=" 👆"
else
  ZSH_THEME_GIT_PROMPT_AHEAD=$WILDCHERRY_GIT_AHEAD
fi
if [ ! -n "${WILDCHERRY_GIT_BEHIND+1}" ]; then
  ZSH_THEME_GIT_PROMPT_BEHIND=" 👇"
else
  ZSH_THEME_GIT_PROMPT_BEHIND=$WILDCHERRY_GIT_BEHIND
fi
if [ ! -n "${WILDCHERRY_GIT_DIVERGED+1}" ]; then
  ZSH_THEME_GIT_PROMPT_DIVERGED=" 🙌"
else
  ZSH_THEME_GIT_PROMPT_DIVERGED=$WILDCHERRY_GIT_PROMPT_DIVERGED
fi

# ------------------------------------------------------------------------------
# SEGMENT DRAWING
# A few functions to make it easy and re-usable to draw segmented prompts
# ------------------------------------------------------------------------------

CURRENT_BG='NONE'
SEGMENT_SEPARATOR=''

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

# ------------------------------------------------------------------------------
# PROMPT COMPONENTS
# Each component will draw itself, and hide itself if no information needs
# to be shown
# ------------------------------------------------------------------------------

# Context: user@hostname (who am I and where am I)
context() {
  local user="$(whoami)"
  [[ "$user" != "$WILDCHERRY_CONTEXT_DEFAULT_USER" || -n "$WILDCHERRY_IS_SSH_CLIENT" ]] && echo -n "${user}@%m"
}
prompt_context() {
  [[ $WILDCHERRY_CONTEXT_SHOW == false ]] && return

  local _context="$(context)"
  [[ -n "$_context" ]] && prompt_segment $WILDCHERRY_CONTEXT_BG $WILDCHERRY_CONTEXT_FG "$_context"
}

# Git
prompt_git() {
  if [[ $WILDCHERRY_GIT_SHOW == false ]] then
    return
  fi

  local ref dirty mode repo_path
  repo_path=$(git rev-parse --git-dir 2>/dev/null)

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    prompt_segment $WILDCHERRY_GIT_BG $WILDCHERRY_GIT_FG

    if [[ $WILDCHERRY_GIT_EXTENDED == true ]] then
      echo -n $(git_prompt_info)$(git_prompt_status)
    else
      echo -n $(git_prompt_info)
    fi
  fi
}

prompt_hg() {
  local rev status
  if $(hg id >/dev/null 2>&1); then
    if $(hg prompt >/dev/null 2>&1); then
      if [[ $(hg prompt "{status|unknown}") = "?" ]]; then
        # if files are not added
        prompt_segment red white
        st='±'
      elif [[ -n $(hg prompt "{status|modified}") ]]; then
        # if any modification
        prompt_segment yellow black
        st='±'
      else
        # if working copy is clean
        prompt_segment green black
      fi
      echo -n $(hg prompt "☿ {rev}@{branch}") $st
    else
      st=""
      rev=$(hg id -n 2>/dev/null | sed 's/[^-0-9]//g')
      branch=$(hg id -b 2>/dev/null)
      if $(hg st | grep -Eq "^\?"); then
        prompt_segment red black
        st='±'
      elif $(hg st | grep -Eq "^(M|A)"); then
        prompt_segment yellow black
        st='±'
      else
        prompt_segment green black
      fi
      echo -n "☿ $rev@$branch" $st
    fi
  fi
}

# Dir: current working directory
prompt_dir() {
  if [[ $WILDCHERRY_DIR_SHOW == false ]] then
    return
  fi

  local dir='🦑  '
  local _context="$(context)"
  [[ $WILDCHERRY_DIR_CONTEXT_SHOW == true && -n "$_context" ]] && dir="${dir}${_context}:"
  [[ $WILDCHERRY_DIR_EXTENDED == true ]] && dir="${dir}%4(c:...:)%3c" || dir="${dir}%1~"
  prompt_segment $WILDCHERRY_DIR_BG $WILDCHERRY_DIR_FG $dir
}

# RVM: only shows RVM info if on a gemset that is not the default one
prompt_rvm() {
  if [[ $WILDCHERRY_RVM_SHOW == false ]] then
    return
  fi

  if which rvm-prompt &> /dev/null; then
    if [[ ! -n $(rvm gemset list | grep "=> (default)") ]]
    then
      prompt_segment $WILDCHERRY_RVM_BG $WILDCHERRY_RVM_FG $WILDCHERRY_RVM_PREFIX"  $(rvm-prompt i v g)"
    fi
  fi
}

# Virtualenv: current working virtualenv
prompt_virtualenv() {
  if [[ $WILDCHERRY_VIRTUALENV_SHOW == false ]] then
    return
  fi

  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment $WILDCHERRY_VIRTUALENV_BG $WILDCHERRY_VIRTUALENV_FG $WILDCHERRY_VIRTUALENV_PREFIX"  $(basename $virtualenv_path)"
  fi
}

# NVM: Node version manager
prompt_nvm() {
  if [[ $WILDCHERRY_NVM_SHOW == false ]] then
    return
  fi

  $(type nvm >/dev/null 2>&1) || return

  local nvm_prompt
  nvm_prompt=$(node -v 2>/dev/null)
  [[ "${nvm_prompt}x" == "x" ]] && return
  nvm_prompt=${nvm_prompt:1}
  prompt_segment $WILDCHERRY_NVM_BG $WILDCHERRY_NVM_FG $WILDCHERRY_NVM_PREFIX$nvm_prompt
}

prompt_time() {
  if [[ $WILDCHERRY_TIME_SHOW == false ]] then
    return
  fi

  prompt_segment $WILDCHERRY_TIME_BG $WILDCHERRY_TIME_FG '🦈  %D{%H:%M:%S} '
}

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  if [[ $WILDCHERRY_STATUS_SHOW == false ]] then
    return
  fi

  local symbols
  symbols=()
  [[ $RETVAL -ne 0 && $WILDCHERRY_STATUS_EXIT_SHOW != true ]] && symbols+="🐟"
  [[ $RETVAL -ne 0 && $WILDCHERRY_STATUS_EXIT_SHOW == true ]] && symbols+="🐟 $RETVAL"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡%f"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="⚙"

  if [[ -n "$symbols" && $RETVAL -ne 0 ]] then
    prompt_segment $WILDCHERRY_STATUS_ERROR_BG $WILDCHERRY_STATUS_FG "$symbols"
  elif [[ -n "$symbols" ]] then
    prompt_segment $WILDCHERRY_STATUS_BG $WILDCHERRY_STATUS_FG "$symbols"
  fi

}

# Prompt Character
prompt_char() {
  local bt_prompt_char

  if [[ ${#WILDCHERRY_PROMPT_CHAR} -eq 1 ]] then
    bt_prompt_char="👉 "
  fi

  if [[ $WILDCHERRY_PROMPT_ROOT == true ]] then
    bt_prompt_char="%(!.%F{red}#.%F{green}${bt_prompt_char}%f)"
  fi

  echo -n $bt_prompt_char
}

# ------------------------------------------------------------------------------
# MAIN
# Entry point
# ------------------------------------------------------------------------------

build_prompt() {
  RETVAL=$?
  prompt_time
  prompt_status
  prompt_rvm
  prompt_virtualenv
  prompt_nvm
  prompt_context
  prompt_dir
  prompt_git
  # prompt_hg
  prompt_end
}

PROMPT='
%{%f%b%k%}$(build_prompt)
%{${fg_bold[default]}%}$(prompt_char) %{$reset_color%}'