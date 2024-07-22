{ pkgs, lib, ... }: {

  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {

      indicator-idle-visible = true;
      indicator-radius = 300;
      clock = true;
      screenshots = true;
      fade-in = 0.5;
      effect-blur = "3x2";
      effect-vignette = "0.99:0.5";
      grace = 2;

      # Catppuccin Mocha Pink but modified 
      # Catppuccin Pink: 
      # Wallpaper
      color =                 lib.mkForce "1e1e2e";
      bs-hl-color =           lib.mkForce "f5c2e7";
      caps-lock-bs-hl-color = lib.mkForce "f5c2e7";
      caps-lock-key-hl-color= lib.mkForce "f5c2e7";
      inside-color=           lib.mkForce "00000080";
      inside-clear-color=     lib.mkForce "00000000";
      inside-caps-lock-color= lib.mkForce "00000000";
      inside-ver-color=       lib.mkForce "00000000";
      inside-wrong-color=     lib.mkForce "00000000";
      key-hl-color=           lib.mkForce "f5c2e7";
      layout-bg-color=        lib.mkForce "00000000";
      layout-border-color=    lib.mkForce "00000000";
      layout-text-color=      lib.mkForce "f5c2e7";
      line-color=             lib.mkForce "f5c2e7";
      line-clear-color=       lib.mkForce "f5c2e7";
      line-caps-lock-color=   lib.mkForce "f5c2e7";
      line-ver-color=         lib.mkForce "f5c2e7";
      line-wrong-color=       lib.mkForce "f5c2e7";
      ring-color=             lib.mkForce "1e1e2e";
      ring-clear-color=       lib.mkForce "f5c2e7";
      ring-caps-lock-color=   lib.mkForce "f5c2e7";
      ring-ver-color=         lib.mkForce "f5c2e7";
      ring-wrong-color=       lib.mkForce "f5c2e7";
      separator-color=        lib.mkForce "00000000";
      text-color=             lib.mkForce "f5c2e7";
      text-clear-color=       lib.mkForce "f5c2e7";
      text-caps-lock-color=   lib.mkForce "f5c2e7";
      text-ver-color=         lib.mkForce "f5c2e7";
      text-wrong-color=       lib.mkForce "f5c2e7";

    };
  };
  
}