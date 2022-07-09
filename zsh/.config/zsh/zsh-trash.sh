#/bin/zsh
move_to_trash() {
  local trash_dir
  trash_dir="${HOME}/.trash"

  if [ ! -d "${trash_dir}" ]; then
    echo "Trash directory doesn't exist. Creating..."
    mkdir "${trash_dir}"
    echo "Created!"
  fi

  local new_dir_name
  new_dir_name="${trash_dir}/$(date +%Y-%m-%d_%H-%M-%S)/"
  mkdir "${new_dir_name}"

  echo "Moving to: ${new_dir_name}"
  mv "$@" ${new_dir_name}
  echo 'Done!'
}

alias really-rm="/bin/rm"
alias rm="move_to_trash"
