if type -q brew
  set -l brew_cmd (command brew command command-not-found-init 2> /dev/null)

  if [ -n "$brew_cmd" ]
    brew command command-not-found-init > /dev/null; and . (brew command-not-found-init)
  else
    echo "Please install 'homebrew-command-not-found' first."
    echo "Check out https://github.com/Homebrew/homebrew-command-not-found"
  end
else
  echo "Please install 'brew' first"
end
