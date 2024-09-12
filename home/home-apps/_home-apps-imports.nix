{ pkgs, ... }: {
  imports = [
    ./-home-packages.nix 
    ./alacritty.nix	
    ./cava.nix
    ./dconf.nix
    ./dunst.nix
    ./firefox.nix
    ./git.nix
    ./gtk.nix 
    ./rofi.nix
    ./vscode.nix
    ./zsh.nix
  ];
}