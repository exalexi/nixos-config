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
      
        modes.resize = {
          Left = "resize shrink width  2ppt";
          Down = "resize grow   height 2ppt";
          Up =   "resize shrink height 2ppt";
          Right = "resize grow width 2ppt";
          Return = "mode default";
          Escape = "mode default";
        };

      # Keybindings
      keybindings = {

        # Terminal
        "Mod4+Return" = "exec alacritty";
        # Kill focused window
        "Mod4+shift+q" = "kill";
        # Open Useful Stuff
        "Mod4+ctrl+shift+n" = "exec nautilus";
        "Mod4+ctrl+shift+f" = "exec firefox";
        "Mod4+ctrl+shift+s" = "exec steam";
        "Mod4+ctrl+shift+d" = "exec vesktop";

        # Start launcher
        "Mod4+d" = "exec rofi -show run";
        # Switch Windows
        "Mod4+tab" = "exec rofi -show window";
        # Rofi Power Menu
        "Mod4+ctrl+p" = "exec rofi -show power-menu -modi power-menu:rofi-power-menu";
        # Swaylock
        "Mod4+l" = "exec swaylock";
         # Screenshot
        "Mod4+p"  = ''exec grim -g "$(slurp)" - | wl-copy'';
        # Rofi Screenshot
        "Mod4+shift+p"  = "exec rofi-screenshot";
        

        # Moving around
        # Move your focus around
        "Mod4+Left" = "focus left";
        "Mod4+Down" = "focus down";
        "Mod4+Up" = "focus up";
        "Mod4+Right" = "focus right";

        # Move your focused window around
        "Mod4+Shift+Left" = "move left";
        "Mod4+Shift+Down" = "move down";
        "Mod4+Shift+Up" = "move up";
        "Mod4+Shift+Right" = "move right";

        # Resize Mode
        "Mod4+r" = "mode resize";

        # Workspaces
        # Switch to workspace
        "Mod4+1" = "workspace 1";
        "Mod4+2" = "workspace 2";
        "Mod4+3" = "workspace 3";
        "Mod4+4" = "workspace 4";
        "Mod4+5" = "workspace 5";
        "Mod4+6" = "workspace 6";
        "Mod4+7" = "workspace 7";
        "Mod4+8" = "workspace 8";
        "Mod4+9" = "workspace 9";
        "Mod4+0" = "workspace 10";

        #Move focused container to workspace
        "Mod4+Shift+1" = "move container to workspace number 1";
        "Mod4+Shift+2" = "move container to workspace number 2";
        "Mod4+Shift+3" = "move container to workspace number 3";
        "Mod4+Shift+4" = "move container to workspace number 4";
        "Mod4+Shift+5" = "move container to workspace number 5";
        "Mod4+Shift+6" = "move container to workspace number 6";
        "Mod4+Shift+7" = "move container to workspace number 7";
        "Mod4+Shift+8" = "move container to workspace number 8";
        "Mod4+Shift+9" = "move container to workspace number 9";
        "Mod4+Shift+0" = "move container to workspace number 10";
        
        # Scratchpad
        "Mod4+minus" = "scratchpad show";
        "Mod4+Shift+minus" = "move scratchpad";
        
        # Floating Toggle
        "Mod4+shift+space" = "floating toggle";
      };

      # Cool Looks \(^.^)/
      gaps = {
        inner = 10;
        outer = 5;
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

      input."*" = {
        xkb_layout = "de";
        xkb_variant = "nodeadkeys";
      };

      # Display Layout
     /* output = {
        DP-2 = {
          resolution = "1680x1050";
          position = "0 870";
          scale = "1";        
        };
        DP-1 = {
          resolution = "1920x1080@144Hz";
          position = "1680 840";
          scale = "1";
        };
        HDMI-A-1 = {
          resolution = "1920x1080@144Hz";
          position = "3600 0";
          transform = "270";
          scale = "1";        
        };
      };*/  
      workspaceAutoBackAndForth = true;
    };
  };
}