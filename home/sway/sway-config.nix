{ pkgs, ... }: 	{
  
  wayland.windowManager.sway = {
    checkConfig = false;
    enable = true;
    systemd.enable = true;
    package = null;
    wrapperFeatures.gtk = true;
    config = rec {
      modifier = "Mod4";
      
      defaultWorkspace = "1";

      focus.followMouse = "always";
      
      gaps = {
        inner = 6;
        outer = 3;
      };
              
      terminal = "alacritty";
      menu = "rofi --show run";
      bars = [{
        command = "waybar";
      }];

      window = {
        hideEdgeBorders = "none";
        border = 0;
        titlebar = false;
      };

      input."*" = {
        xkb_layout = "de";
        xkb_variant = "nodeadkeys";
      };

      workspaceAutoBackAndForth = false;
    };
  };
}