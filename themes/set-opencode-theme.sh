#!/bin/bash

if command -v opencode &>/dev/null; then
  case "$THEME" in
    tokyo-night)
      OPENCODE_THEME="tokyonight"
      ;;
    rose-pine)
      OPENCODE_THEME="rosepine"
      ;;
    catppuccin|nord|everforest|gruvbox|kanagawa|osaka-jade)
      OPENCODE_THEME="$THEME"
      ;;
    *)
      OPENCODE_THEME="opencode"
      ;;
  esac

  OPENCODE_DIR="$HOME/.config/opencode"
  OPENCODE_TUI_FILE="$OPENCODE_DIR/tui.json"

  mkdir -p "$OPENCODE_DIR"

  if [ ! -f "$OPENCODE_TUI_FILE" ]; then
    cat > "$OPENCODE_TUI_FILE" <<EOF
{
  "theme": "$OPENCODE_THEME"
}
EOF
  else
    if grep -qE '"theme"[[:space:]]*:' "$OPENCODE_TUI_FILE"; then
      sed -i -E "0,/\"theme\"[[:space:]]*:[[:space:]]*\"[^\"]*\"/s//\"theme\": \"$OPENCODE_THEME\"/" "$OPENCODE_TUI_FILE"
    elif grep -qE '^[[:space:]]*\{[[:space:]]*\}[[:space:]]*$' "$OPENCODE_TUI_FILE"; then
      sed -i -E "s/^[[:space:]]*\{[[:space:]]*\}[[:space:]]*$/{\n  \"theme\": \"$OPENCODE_THEME\"\n}/" "$OPENCODE_TUI_FILE"
    else
      sed -i -E "0,/\{/s//{\n  \"theme\": \"$OPENCODE_THEME\",/" "$OPENCODE_TUI_FILE"
    fi
  fi
fi
