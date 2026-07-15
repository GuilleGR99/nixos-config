{ ... }:

{
  services.xserver.enable = true;

  services.xserver.xkb = {
    layout = "es";
    variant = "winkeys";
  };

  services.tailscale.enable = true;

  services.udisks2.enable = true;
  services.gvfs.enable = true;

  programs.firefox.enable = true;
  programs.niri.enable = true;

  programs.steam.enable = true;

}
