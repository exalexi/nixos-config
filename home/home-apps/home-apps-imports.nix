{ pkgs, ... }: {
  imports = [
    ./home-packages.nix
    ./alacritty.nix	
    ./firefox.nix
    ./git.nix
    ./vscode.nix
  ];
}