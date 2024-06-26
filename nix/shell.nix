{pkgs}:
pkgs.mkShell {
  name = "Gzscenic development shell";
  buildInputs = with pkgs.python3Packages; [
    scenic
    decorator
    shapely
    dotmap
    wget
    attrs
    scenic
    pyyaml
    # ruyaml
    numpy
    decorator
    shapely
    dotmap
    requests
    pycollada
    pywavefront
    matplotlib
  ];
  # shellHook = ''
  # '';
}
