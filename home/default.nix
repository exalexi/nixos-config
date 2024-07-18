{ pkgs, ... }: 	{
  # Everything inside here is managed by Home Manager
    programs.home-manager = {
    enable = true;	
  };

  imports = [
    <catppuccin/modules/home-manager>
    ./sway/sway-imports.nix
    ./home-apps/home-apps-imports.nix
    ./catppuccin.nix
    ./cursor.nix
    #./default-apps.nix
  ];
  
  # The state verson is required and should stay at the version you originally installed.
  home.stateVersion = "24.05";
}