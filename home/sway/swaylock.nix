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
      effect-vignette = "0.5:0.5";
      grace = 2;

      # Catppuccin but modified
      color =                 lib.mkForce "1e1e2e";
      bs-hl-color =           lib.mkForce "f5e0dc";
      caps-lock-bs-hl-color = lib.mkForce "f5e0dc";
      caps-lock-key-hl-color= lib.mkForce "f5e0dc";
      inside-color=           lib.mkForce "00000000";
      inside-clear-color=     lib.mkForce "00000000";
      inside-caps-lock-color= lib.mkForce "00000000";
      inside-ver-color=       lib.mkForce "00000000";
      inside-wrong-color=     lib.mkForce "00000000";
      key-hl-color=           lib.mkForce "f5e0dc";
      layout-bg-color=        lib.mkForce "00000000";
      layout-border-color=    lib.mkForce "00000000";
      layout-text-color=      lib.mkForce "f5e0dc";
      line-color=             lib.mkForce "f5e0dc";
      line-clear-color=       lib.mkForce "f5e0dc";
      line-caps-lock-color=   lib.mkForce "f5e0dc";
      line-ver-color=         lib.mkForce "f5e0dc";
      line-wrong-color=       lib.mkForce "f5e0dc";
      ring-color=             lib.mkForce "1e1e2e";
      ring-clear-color=       lib.mkForce "f5e0dc";
      ring-caps-lock-color=   lib.mkForce "f5e0dc";
      ring-ver-color=         lib.mkForce "f5e0dc";
      ring-wrong-color=       lib.mkForce "f5e0dc";
      separator-color=        lib.mkForce "00000000";
      text-color=             lib.mkForce "f5e0dc";
      text-clear-color=       lib.mkForce "f5e0dc";
      text-caps-lock-color=   lib.mkForce "f5e0dc";
      text-ver-color=         lib.mkForce "f5e0dc";
      text-wrong-color=       lib.mkForce "f5e0dc";

    };
  };
  
}