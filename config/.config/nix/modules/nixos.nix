{ ... }:
{
  system.stateVersion = "24.05";

  services.openssh.enable = true;
  networking.networkmanager.enable = true;
}
