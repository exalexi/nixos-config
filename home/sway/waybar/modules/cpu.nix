{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
    
    cpu = {
      format = "{usage}%  ";
      tooltip = false;
    };
  };
}