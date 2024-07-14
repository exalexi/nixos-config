{ pkgs, ... }: {
  home.packages = with pkgs; [  ];

  programs.waybar = {

    settings.mainBar = {
      layer = "bottom";
      position = "top";
      height = 35;
      #margin-top = 0;
      #margin-bottom = 0;
      #margin-left = 0;
      #margin-right = 0;

      modules-left = [
        "sway/workspaces"
      ];
      modules-center = [
        "sway/window"
      ];
      modules-right = [
        #"clock"
        "network"
        "brightness"
        "pulseaudio"
        "battery"
        "clock"
      ];
      clock = {
        format = " {:%a %d %b, %H:%M}";
        tooltip = "true";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt = " {:%d/%m}";
        #format = " {%a %0e.%0d %H:%M}";
        #timezone = "Europe/Berlin";
        #tooltip = "true";
        #tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        #format-alt = " {:%d/%m}";

      };

    };


    style = ''
    '';
  };
}
