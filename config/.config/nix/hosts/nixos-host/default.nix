{ ... }:
{
  networking.hostName = "nixos-host";

  users.users.stevennkeneng = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
}
