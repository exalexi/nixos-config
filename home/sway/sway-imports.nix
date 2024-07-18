{ pkgs, ...}: {
    imports =
    [ # Include the results of the hardware scan.
      ./sway-config.nix
      ./swayidle.nix
      ./swaylock.nix
      ./sway-extraconfig.nix
      ./waybar/waybar.nix
      ./sway-notifications.nix
    ];
}