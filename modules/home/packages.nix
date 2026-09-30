{ pkgs, ... }:

let
  texlive = pkgs.texliveBasic.withPackages (ps: with ps; [
    babel # international languges support
    babel-spanish # support spanish
    babel-english # support english
    latexmk # compilation engine
  ]);
in

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
    tailscale
    tmux
    tree
    vlc
    wireshark
    zed-editor
    uv
    texlive
    texlab
    gcc
  ];
}
