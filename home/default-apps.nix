{ pkgs, lib, ... }: 	{
  xdg.mimeApps = { 
    enable = true; 
    associations.added = { 
      "application/pdf" = ["firefox.desktop"]; 
    }; 
    defaultApplications = { 
      "application/pdf" = ["firefox.desktop"]; 
    }; 
  };
}