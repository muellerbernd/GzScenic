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
  pywavefront,
}:
buildPythonPackage {
  pname = "gzscenic";
  version = "0.1dev";
  pyproject = true;

  src = ../../../.;

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
    description = "GzScenic";
    homepage = "https://github.com/squaresLab/GzScenic";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [muellerbernd];
  };
}
