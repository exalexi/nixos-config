{ pkgs, ... }: {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    /*theme = {
      background-color = "#1E1E2E";
      foreground-color = "#F5E0DC";
      border-color =     "#F5E0DC";
    };*/
    
  }; 
}