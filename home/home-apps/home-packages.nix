{ pkgs, ... }: {
    home.packages = with pkgs; [
    file
    neofetch
    htop
    eza
    wl-clipboard
    mako
    alacritty
    wofi
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
    texlive.combined.scheme-full
    texworks
    nixfmt-rfc-style
    vlc
    grim
    slurp
    # Rofi Add-ons
    rofi-power-menu
    rofimoji
    rofi-screenshot

    # Waybar Media Player
    feh 
    playerctl
  ];
}