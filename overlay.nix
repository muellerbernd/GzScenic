final: prev: with prev.lib;
foldr composeExtensions (_: _: {}) [
  (import ./nix/pkgs)
] final prev
