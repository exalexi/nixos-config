{ pkgs, ... }: {
  home.packages = with pkgs; [  ];

  programs.waybar = {

    settings.mainBar = {
      #reload_style_on_change = true;
      layer = "bottom";
      position = "top";
      height = 35;
      #margin-top = 0;
      #margin-bottom = 0;
      #margin-left = 0;
      #margin-right = 0;
      spacing = 10;
      modules-left = [
        #"sway/mode"
        "sway/window"
        #"cava"
        #"image"
        #"custom/mediaplayer"
      ];
      modules-center = [
        "sway/workspaces"
        #"sway/window"
        #wlr/taskbar"
      ];
      modules-right = [
        #"network"
        #"memory"
        #"cpu"
        #"cava"
        "tray"
        "user"
        "battery"
        "pulseaudio"
        "clock"
      ];
      /*image = {
         path = "/tmp/waybar-mediaplayer-art";
         size = 32;
         signal = 4;
         on-click = "feh --auto-zoom --borderless --title 'feh-float' /tmp/waybar-mediaplayer-art";
      };

      "custom/mediaplayer" = {
        exec = "$HOME/.config/waybar/waybar-mediaplayer/src/mediaplayer monitor";
        return-type = "json";
        format = "{}";
        on-click = "$HOME/.config/waybar/waybar-mediaplayer/src/mediaplayer play-pause";
        on-scroll-up = "$HOME/.config/waybar/waybar-mediaplayer/src/mediaplayer next";
        on-scroll-down = "$HOME/.config/waybar/waybar-mediaplayer/src/mediaplayer previous";
        min-length = 20;
        max-length = 20;
      };*/



      battery = {
        states = {
          good = 95;
          warning = 30;
          critical = 15;
        };
        format = "{icon}    {capacity}%";
        format-charging = "    {capacity}%";
        format-plugged = "   {capacity}% ";
        format-alt = "{icon}   {time}";
        format-icons = [
          ""
          ""
          ""
          ""
          ""
        ];
      };


      user = {
        format = "{work_d}:{work_H}:{work_M}:{work_S}";
        interval = 1;
      };
      
      tray = {
        icon-size = 24;
        spacing = 8;
      };

      clock = {
        format = "   {:%a %d %b, %H:%M }";
        tooltip = "true";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt = "   {:%d/%m }";
        #format = " {%a %0e.%0d %H:%M}";
        #timezone = "Europe/Berlin";
        #tooltip = "true";
        #tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        #format-alt = " {:%d/%m}";
      };      
      
      pulseaudio-slider = {
        min = 0;
        max = 100;
        orientation = "horizontal";
      };
      
      cpu = {
        format = "{usage}%  ";
        tooltip = false;
      };
      
      network = {
        interval = 1;
        format-alt = "{ifname}: {ipaddr}/{cidr}";
        format-disconnected = "Disconnected ⚠";
        format-ethernet = "{ifname}: {ipaddr}/{cidr}   up: {bandwidthUpBits} down: {bandwidthDownBits}";
        format-linked = "{ifname} (No IP) ";
        format-wifi = "{essid} ({signalStrength}%) ";
      };
      
      memory = { 
        format = "{}% "; 
      };
      
      "sway/mode" = { 
        format = " {}";
         max-length = 50;
      };

      "sway/window" = {
        #format = "😼 {title} 😼";
        format = "😼{app_id}😼";
        all-outputs = true;
        #rotate = 2;
        icon = true;
        icon-size = 24;
      };

      "sway/workspaces" = {
        format = "{name}";
        on-click = "activate";
        format-icons = {
          urgent = "";
          active = "";
          default = "";
          sort-by-number = true;
        };
      };
      
      temperature = {
        critical-threshold = 80;
        format = "{temperatureC}°C {icon}";
        format-icons = [ "" "" "" ];
      };

      pulseaudio = {
        format = "{volume}% {icon}   {format_source}";
        format-bluetooth = "{volume}% {icon} {format_source}";
        format-bluetooth-muted = " {icon} {format_source}";
        format-icons = {
          car = "";
          default = [ "" "" "" ];
          handsfree = "";
          headphones = "";
          headset = "";
          phone = "";
          portable = "";
        };
        format-muted = " {format_source}";
        format-source = "{volume}% ";
        format-source-muted = "";
        on-click = "pavucontrol";
      };
    };

    style = '''';
  };
}