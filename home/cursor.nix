{ pkgs, lib, ... }: 	{
  home.pointerCursor = lib.mkForce {
    name = "capitaine-cursors";
    package = pkgs.capitaine-cursors;
    size = 40;
    x11 = {
      enable = true;
      defaultCursor = "capitaine-cursors";
    };
    gtk.enable = true;
  };

    /*gtk = {
      enable = true;
      cursorTheme = {
      	name = "capitaine-cursors";
      	package = pkgs.capitaine-cursors;
      	size = 40;
      };	
    };*/

}