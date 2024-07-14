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
      
      # Cool Looks \(^.^)/
      gaps = {
        inner = 5;
        outer = 4;
      };
              
      terminal = "alacritty";
      menu = "wofi --show run";
      bars = [{
        command = "waybar";
      }];
      window = {
        hideEdgeBorders = "smart";
        border = 0;
        titlebar = false;
        
      };
      output.eDP-1.scale = "1";
      input."*" = {
        xkb_layout = "de";
        xkb_variant = "nodeadkeys";
      };
      workspaceAutoBackAndForth = true;
    };
  };
}