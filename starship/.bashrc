# add this to the end

# use Windows' git when working under C:\ drive
function git() {
  if $(pwd -P | grep -q "^\/mnt\/c\/*"); then
    git.exe "$@"
  else
    command git "$@"
  fi
}

### don't autostart fish if we alredy did it.
if [ -z "$STARTEDFISH" ];
then
    export STARTEDFISH=1;
    exec fish;
    exit;
fi
