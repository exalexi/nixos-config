{ pkgs, ... }: 	{
  wayland.windowManager.sway.extraConfig = 
    ''
    # Cursor Theme
    #seat seat0 xcursor_theme my_cursor_theme 20
    #seat seat0 xcursor_theme Vimix-cursors 24
    exec_always gsettings set org.gnome.desktop.interface cursor-theme "capitaine-cursors"
                
    # Brightness
    bindsym XF86MonBrightnessDown exec light -U 5
    bindsym XF86MonBrightnessUp exec light -A 5
    # Volume
    bindsym XF86AudioMute exec pactl set-sink-mute @DEFAULT_SINK@ toggle
    bindsym XF86AudioRaiseVolume exec pactl set-sink-volume @DEFAULT_SINK@ +5%
    bindsym XF86AudioLowerVolume exec pactl set-sink-volume @DEFAULT_SINK@ -5%

    # Wallpaper
    output * bg /etc/nixos/wallpaper.png fill

    # Cool Looks \(^-^)/
    corner_radius 20
    
    blur on
    blur_xray on
    blur_passes 3
    blur_radius 10	

    shadows on
    #shadow_on_csd off
    shadow_blur_radius 10
    shadow_color #f4b8e4

    # Startup Apps
    #exec swaymsg "workspace 1; exec alacritty; workspace 2; exec alacritty; exec firefox; workspace 3; exec firefox; workspace 4; exec discord; exec element-desktop; layout tabbed; workspace 5; exec keepassxc;"
    '';
}