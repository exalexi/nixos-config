{ pkgs, ...}: {

  imports =
    [ # Include the results of the hardware scan.
      ./waybar-settings.nix
    ];
    
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    systemd = {
      enable = true;
      target = "sway-session.target";
    };
  };
}