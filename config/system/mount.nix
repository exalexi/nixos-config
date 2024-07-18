{ pkgs, ... }: {

  # USB Stick mounting
  services.gvfs.enable = true;
  services.udisks2.enable = true;
  security.polkit.enable = true;
  
  # Volume:      8CD8D180D8D1694A
  # New Volume:  52FA7085FA7066DF
}