{ pkgs, ... }:

{
  networking.wg-quick.interfaces.proton = {
    configFile = "/etc/wireguard/proton.conf";
  };

  systemd.services.wg-quick-proton = {
    wants = [ "tailscaled.service" ];
    after = [ "tailscaled.service" ];
  };
}
