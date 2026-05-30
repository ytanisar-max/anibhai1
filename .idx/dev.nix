{ pkgs, ... }: {
  packages = [
    pkgs.nodejs_20
    pkgs.python311
    pkgs.python310
    pkgs.go
    pkgs.rustc
    pkgs.cargo
    pkgs.gcc
    pkgs.gpp
    pkgs.git
    pkgs.curl
    pkgs.wget
    pkgs.htop
    pkgs.tmux
    pkgs.nano
    pkgs.vim
    pkgs.bash
  ];

  idx = {
    extensions = [];
    
    previews = {
      enable = true;
      previews = {
        web = {
          command = [
            "bash"
            "-c"
            "npm start"
          ];
          manager = "web";
          env = {
            PORT = "$PORT";
          };
        };
      };
    };
  };

  bootstrap = ''
    echo "Initializing VPS Environment..."
    chmod +x setup.sh
    echo "Ready! Run: bash setup.sh"
  '';
}
