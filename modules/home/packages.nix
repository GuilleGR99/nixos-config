{ pkgs, ... }:

{
  home.packages = with pkgs; [
  kitty
  tmux
  git
  vlc
  kdePackages.okular
  qbittorrent
  python3
  file-roller
  obsidian
  nettools
  nmap
  zed-editor
  ];
}
