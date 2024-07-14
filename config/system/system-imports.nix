{ pkgs, ... }: {
    imports =
    [
      ./audio.nix
      ./fonts.nix
      ./laptop.nix
      ./locale.nix
      ./mount.nix
      ./networking.nix
      ./sway.nix
      ./video.nix
    ];
}