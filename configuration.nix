{ config, pkgs, ... }:

{

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  imports =
    [
      ./hardware-configuration.nix
      ./modules/configuration/hardware.nix
      ./modules/configuration/localization.nix
      ./modules/configuration/desktop.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."g" = {
    isNormalUser = true;
    description = "g";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  environment.systemPackages = with pkgs; [
     pkgs.nautilus
  ];

  system.stateVersion = "26.05";

}
