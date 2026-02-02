{config, pkgs, ...}:

{
  # possiblement différent, ne pas changer
  imports = [ <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal-combined>];

  # bloc à ajouter
  services.openssh = {
    enable = true;

    settings = {
      PasswordAuthentication = true;
      PermitRootLogin = "yes";
    };
  };
}