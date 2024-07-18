{ pkgs, ...}: {

  # TODO: Figure this annoying garbage out 
  /*
  services.swayidle = {
    enable = true;
    package = pkgs.swayidle;
      timeouts = [
        { 
          timeout = 10; 
          command = "${pkgs.swaylock}/bin/swaylock -fF"; 
        }
        #{ 
        #  timeout = 90; 
        #  command = "${pkgs.systemd}/bin/systemctl suspend"; 
        #}
    ];
  };
  systemd.user.services.swayidle.Service.Environment = [ "WAYLAND_DISPLAY=wayland-1" ];

  */
}