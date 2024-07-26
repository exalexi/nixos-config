{ pkgs, ... }: {
    home.packages = with pkgs; [
    file
    htop
    eza
    wl-clipboard
    mako
    alacritty
    keepassxc
    gnome.eog
    gnome.evince
    gnome.file-roller
    gnome.nautilus
    element-desktop
    rpi-imager
    tigervnc
    gimp
    protonvpn-cli_2
    vesktop
    nixfmt-rfc-style
    vlc
    fish
    grim
    slurp
    wtype
    yt-dlp
    rofimoji
    rofi-power-menu
    rofi-screenshot
    # Waybar Media Player
    feh 
    playerctl
  ];
}