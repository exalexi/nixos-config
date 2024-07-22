{ pkgs, ... }: {

  programs.waybar.settings.mainBar = {
  
    "sway/workspaces" = {
      format = "{name}";
      on-click = "activate";
      format-icons = {
        urgent = "";
        active = "";
        default = "";
        sort-by-number = true;
      };
    };
  };
}