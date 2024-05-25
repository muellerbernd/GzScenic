{pkgs}:   pkgs.mkShell {
    name = "Gzscenic development shell";
    buildInputs = with pkgs.python3Packages; [
      scenic
      pyyaml
      numpy
      decorator
      shapely
      dotmap
    ];
    # shellHook = ''
    # '';
  }
