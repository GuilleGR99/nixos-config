{ pkgs, ... }:

{
  home.packages = with pkgs; [
    file-roller
    git
    kdePackages.okular
    kitty
    nettools
    nmap
    obsidian
    python3
    qbittorrent
    tmux
    tree
    vlc
    zed-editor
  ];
}
