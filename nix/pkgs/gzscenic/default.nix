{
  lib,
  buildPythonPackage,
  setuptools,
  decorator,
  shapely,
  dotmap,
  wget,
  attrs,
  pyyaml,
  numpy,
  scenic,
  requests,
  pycollada,
  pywavefront
}:
buildPythonPackage rec {
  pname = "gzscenic";
  version = "0.1dev";
  pyproject = true;

  src = ./.;
  postPatch = ''
  '';

  buildInputs = [
    setuptools
  ];
  propagatedBuildInputs = [
    scenic
    decorator
    shapely
    dotmap
    wget
    attrs
    scenic
    pyyaml
    numpy
    decorator
    shapely
    dotmap
    requests
    pycollada
    pywavefront
  ];

  nativeCheckInputs = [
  ];

  meta = {
    changelog = "https://github.com/pytest-dev/pytest/releases/tag/${version}";
    description = "Framework for writing tests";
    homepage = "https://github.com/pytest-dev/pytest";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [domenkozar lovek323 madjar lsix];
  };
}
