if [[ -z "$SSH_TTY" ]]; then
  SDL_NOMOUSE=1 /usr/bin/emulationstation
else
  uname -s -r -m
fi
