{ pkgs, lib, ... }: {
  programs.cava = {
    enable = true;
    package = pkgs.cava;
    settings = {
      general.framerate = 60;
      input.method = "pulse";
      smoothing.noise_reduction = 80;
      color = {
        background = lib.mkForce "'#1E1E2E'";
        foreground = lib.mkForce "'#F5E0DC'";
      };
    };
  };
}