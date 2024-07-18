{ pkgs, ... }: {
  imports = [
    ./alacritty.nix	
    ./cava.nix
    ./firefox.nix
    ./git.nix
    ./gtk.nix
    ./home-packages.nix  
    ./rofi.nix
    ./vscode.nix
  ];
}