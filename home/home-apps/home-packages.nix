{ pkgs, ... }: {
    home.packages = with pkgs; [
    file
    neofetch
    htop
    eza
    swayidle
    wl-clipboard
    mako
    alacritty
    wofi
    keepassxc
    gnome.eog
    gnome.evince
    gnome.file-roller
    gnome.nautilus
    dolphin
    element-desktop
    rpi-imager
    tigervnc
    gimp
    protonvpn-cli_2
    vesktop
    texlive.combined.scheme-full
    texworks
    nixfmt-rfc-style
  ];
}