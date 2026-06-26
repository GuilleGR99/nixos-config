{ config, pkgs, inputs, ... }:

{

  imports = [
    inputs.noctalia.homeModules.default
    ./modules/home/packages.nix
    ./modules/home/zsh.nix
    ./modules/home/tmux.nix
  ];
  home.username = "g";
  home.homeDirectory = "/home/g";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
  programs.noctalia-shell.enable = true;


}
