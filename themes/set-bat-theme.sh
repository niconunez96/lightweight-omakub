#!/bin/bash

if command -v bat &>/dev/null; then
  case "$THEME" in
    catppuccin)
      BAT_THEME="Catppuccin Mocha"
      ;;
    nord)
      BAT_THEME="Nord"
      ;;
    gruvbox)
      BAT_THEME="gruvbox-dark"
      ;;
    tokyo-night|kanagawa|ristretto)
      BAT_THEME="TwoDark"
      ;;
    rose-pine)
      BAT_THEME="Catppuccin Mocha"
      ;;
    everforest|osaka-jade|matte-black)
      BAT_THEME="gruvbox-dark"
      ;;
    *)
      BAT_THEME="gruvbox-dark"
      ;;
  esac

  if ! bat --list-themes 2>/dev/null | grep -Fxq "$BAT_THEME"; then
    BAT_THEME="gruvbox-dark"
  fi

  BAT_CONFIG_DIR="$HOME/.config/bat"
  BAT_CONFIG_FILE="$BAT_CONFIG_DIR/config"

  mkdir -p "$BAT_CONFIG_DIR"

  if [ ! -f "$BAT_CONFIG_FILE" ]; then
    printf '%s\n' "--theme=\"$BAT_THEME\"" > "$BAT_CONFIG_FILE"
  elif grep -qE '^--theme=' "$BAT_CONFIG_FILE"; then
    sed -i -E "0,/^--theme=.*/s|^--theme=.*$|--theme=\"$BAT_THEME\"|" "$BAT_CONFIG_FILE"
  else
    printf '%s\n' "--theme=\"$BAT_THEME\"" >> "$BAT_CONFIG_FILE"
  fi
fi
