### Minimal Yabai + skhd config

Exact `yabairc` and `skhdrc` used on my Mac. Keep this repo at `~/.config/yabai` so paths work.

### Install

```sh
brew install koekeishiya/formulae/yabai koekeishiya/formulae/skhd
mkdir -p "${HOME}/.config"
git clone https://github.com/encinascarles/yabai-config "${HOME}/.config/yabai"
chmod +x "${HOME}/.config/yabai/scripts"/*.sh 2>/dev/null || true
open "/System/Applications/System Settings.app" # grant Accessibility to yabai/skhd
brew services start yabai
brew services start skhd
```

Optional (yabai scripting addition):

```sh
sudo yabai --install-sa && sudo yabai --load-sa
```

YabaiIndicator (optional):

- Download from releases and install: `https://github.com/xiamaz/YabaiIndicator/releases`
- Launch the app (keep it running). The config already emits events to `unix:///tmp/yabai-indicator.socket`.

### Keys (from `skhdrc`)

- alt + shift - t: open iTerm2 (`scripts/open_iterm2.sh`)
- alt + shift - c: open Arc (`scripts/open_arc.sh`)
- alt + shift - e: new Finder window
- alt + shift - v: cursor -n
- alt + shift - w: quit inactive apps (`scripts/quit_inactive.sh`)
- shift + alt - 1..9: send focused window to space 1..9
- alt + lctrl - 1..9: swap/move all windows via script (`scripts/swap_and_return.sh N`)
- shift + alt - return: move all windows to last free space (`scripts/windowsAway.sh`)
- cmd - 1..9: focus space 1..9; cmd - 0: space 10; cmd - 0x1B/0x3B: spaces 11/12; cmd - 0x0A: recent

Notes:

- Create missing scripts referenced above (or adjust paths) under `${HOME}/.config/yabai/scripts`.
- If services don’t react, allow Accessibility for `yabai` and `skhd` in System Settings.
