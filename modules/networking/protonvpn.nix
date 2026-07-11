{ ... }:

{
  networking.wg-quick.interfaces.proton = {
    configFile = "/etc/wireguard/proton.conf";
    postUp = "ip route add 100.64.0.0/10 dev tailscale0";
    postDown = "ip route del 100.64.0.0/10 dev tailscale0";
  };
}
