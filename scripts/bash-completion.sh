# Setup bash completion
_dvm_completions() {
  local CURRENT_WORD="${COMP_WORDS[COMP_CWORD]}"
  
  if [[ "$COMP_CWORD" == 0 ]]; then
    COMPREPLY=($(compgen -W "dvm" -- "$CURRENT_WORD"))
    return
  fi
  if [[ "$COMP_CWORD" == 1 ]]; then
    COMPREPLY=($(compgen -W "alias implode install list listall upgrade use version" -- "$CURRENT_WORD"))
    return
  fi
  
  case "${COMP_WORDS[1]}" in
    # dvm alias
    alias)
      if [[ "$COMP_CWORD" == 2 ]]; then
        COMPREPLY=($(compgen -W "create update delete list" -- "$CURRENT_WORD"))
      fi
      ;;
    
    # dvm implode
    implode)
      ;;
    
    # dvm install
    install)
      if [[ "$COMP_CWORD" == 2 ]]; then
        COMPREPLY=($(compgen -W "$(dvm listall)" -- "$CURRENT_WORD"))
      fi
      ;;
    
    # dvm list
    list)
      ;;
    
    # dvm listall
    listall)
      if [[ "$COMP_CWORD" == 2 ]]; then
        COMPREPLY=($(compgen -W "--dev --beta" -- "$CURRENT_WORD"))
      fi
      ;;
    
    # dvm upgrade
    upgrade)
      ;;
    
    # dvm use
    use)
      if [[ "$COMP_CWORD" == 2 ]]; then
        COMPREPLY=($(compgen -W "$(dvm list) --default" -- "$CURRENT_WORD"))
      fi
      if [[ "$COMP_CWORD" == 3 ]]; then
        if [[ "${COMP_WORDS[2]}" == '--default' ]]; then
          COMPREPLY=($(compgen -W "$(dvm list)" -- "$CURRENT_WORD"))
        else
          COMPREPLY=($(compgen -W "--default" -- "$CURRENT_WORD"))
        fi
      fi
      ;; 
    
    # dvm version
    version)
      ;;

    # Others don't work!
    *)
      ;;
  esac
} && complete -F _dvm_completions dvm


