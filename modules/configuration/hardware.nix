{ ... }:

{
  # Bluetooth
  hardware.bluetooth.enable = true;

  # Battery info
  services.upower.enable = true;

  # Power profiles manager
  services.power-profiles-daemon.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
