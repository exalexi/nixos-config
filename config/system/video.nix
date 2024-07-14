{ pkgs, ... }: {

  # OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
    extraPackages = with pkgs; [
      intel-media-driver
      intel-compute-runtime	
    ];
  };

  hardware = {
  	enableRedistributableFirmware = true;
  	cpu = {
  	  intel.updateMicrocode = true;
  	  amd.updateMicrocode = true;	
  	};
  };

    /*services.xserver.videoDrivers = [ "nvidia" ];  
  hardware.nvidia = {
  	modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    prime = {
      sync.enable = true;
      intelBusId = "PCI:2:0:0";
      nvidiaBusId = "PCI:1:0:0";	
    };
  };*/
}