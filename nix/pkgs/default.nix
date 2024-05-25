self: super:
with self.lib; let
  pythonOverridesFor = prevPython:
    prevPython
    // {
      pkgs = prevPython.pkgs.overrideScope (pyFinal: pyPrev: {
        scenic = pyFinal.callPackage ./scenic.nix {};
        gzscenic = pyFinal.callPackage ./gzscenic.nix {};
      });
    };
in {

  python38 = pythonOverridesFor super.python38;
  python39 = pythonOverridesFor super.python39;
  python310 = pythonOverridesFor super.python310;
  python311 = pythonOverridesFor super.python311;
}
