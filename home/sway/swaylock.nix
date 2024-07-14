{ pkgs, ... }: {

  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    settings = {
      #color = "ff00f0";
      #font-size = 30;
      #font = "LiberationMono";
      indicator-idle-visible = true;
      indicator-radius = 250;
      #line-color = "f0f0f0";
      #show-failed-attempts = true;	
      clock = true;
      screenshots = true;
      fade-in = 1;
      #effect-pixelate = 10;
      effect-greyscale = true;
      effect-blur = "3x7";
      #effect-vignette = "1:2";
    };
  };
  
}