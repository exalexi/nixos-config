{ config, pkgs, lib, ... }: {

  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos>
      ./config/system-apps/_system-apps-imports.nix
      ./config/system/_system-imports.nix
    ];

  nixpkgs.config.packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lexi = {
    isNormalUser = true;
    description = "Lexi";
    extraGroups = [ "networkmanager" "wheel" "video" "storage" ];
    packages = with pkgs; [];
  };

  # Begin Home-Manager directives
  home-manager = {
  	useUserPackages = true;
  	useGlobalPkgs = true;
  };
  # Import Home-Manager config
  home-manager.users.lexi = import ./home;
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.05"; 
}
