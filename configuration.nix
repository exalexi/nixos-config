{ config, pkgs, lib, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos>
      ./config/apps/apps-imports.nix
      ./config/system/system-imports.nix
    ];

  # Bootloader & Plymouth
  boot = {
    loader = {
      systemd-boot.enable = true;
  	  efi.canTouchEfiVariables = true;
    };
    kernelParams = [ "quiet" ];
    initrd = {
      kernelModules = [ "amdgpu" ];
      systemd.enable = true;
    };
    plymouth.enable = true;
  };
  
  # Greeter
  services.greetd = {
  	enable = true;
  	restart = false;
  	settings = {
  	  default_session.command = "tuigreet --cmd 'dbus-run-session sway' -t -r --asterisks -g 'Hiya'";
  	  initial_session = {
  	    user = "lexi";
  	    command = "dbus-run-session sway";	
  	  };
  	};
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.lexi = {
    isNormalUser = true;
    description = "Lexi";
    extraGroups = [ "networkmanager" "wheel" "video" "storage"];
    packages = with pkgs; [];
  };

  # Set cursor size
  #environment.variables.XCURSOR_SIZE = 40;  

  # Begin home-manager directives
  home-manager = {
  	useUserPackages = true;
  	useGlobalPkgs = true;
  };
  home-manager.users.lexi = import ./home;
  
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.05"; 
}
