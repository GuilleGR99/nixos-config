{ config, pkgs, inputs, ... }:

{

  imports = [
    inputs.noctalia.homeModules.default
  ];
  home.username = "g";
  home.homeDirectory = "/home/g";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
  programs.noctalia-shell.enable = true;
  
  home.packages = with pkgs; [
  alacritty
  git
  vlc
  kdePackages.okular
  qbittorrent
  python3
  ];
}
