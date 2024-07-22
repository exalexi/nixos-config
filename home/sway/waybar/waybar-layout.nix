{ pkgs, ... }: {
  imports = [ ./modules/_module-imports.nix ];

  programs.waybar = {

    settings.mainBar = {
      layer = "bottom";
      position = "top";
      height = 35;
      spacing = 10;
      modules-left = [
        "sway/window"
        #"cava"
        #"image"
        #"custom/mediaplayer"
      ];
      modules-center = [
        "sway/workspaces"
      ];
      modules-right = [
        #"network"
        #"memory"
        #"cpu"
        "tray"
        "user"
        "backlight"
        "battery"
        "pulseaudio"
        "clock"
      ];
    };
  };
}
