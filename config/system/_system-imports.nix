{ pkgs, ... }: {
  imports =
  [
    ./audio.nix
    ./boot.nix
    ./fonts.nix
    ./greetd.nix
    ./laptop.nix
    ./locale.nix
    ./mount.nix
    ./networking.nix
    ./sway.nix
    ./video.nix
  ];
}