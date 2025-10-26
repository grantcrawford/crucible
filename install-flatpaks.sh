# Add Flathub to user remotes:
# flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# Install your chosen app (example: KeePassXC) from Flathub for your user:
# flatpak install --user flathub org.keepassxc.KeePassXC

FLATPAKS=(
  "spotify"
  "discord"
  "chrome"
)

for pak in "${FLATPAKS[@]}"; do
  if ! flatpak list | grep -i "$pak" &> /dev/null; then
    echo "Installing Flatpak: $pak"
    flatpak install --noninteractive "$pak"
  else
    echo "Flatpak already installed: $pak"
  fi
done
