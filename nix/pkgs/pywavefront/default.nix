{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  pyglet,
}:
buildPythonPackage rec {
  pname = "PyWavefront";
  version = "1.3.3";
  pyproject = true;

  # src = fetchPypi {
  #   inherit pname version;
  #   hash = "";
  # };
  src = fetchFromGitHub {
    owner = "pywavefront";
    repo = "PyWavefront";
    rev = "${version}";
    hash = "sha256-ci40L2opJ+NYYtaAeX1Y5pzkdK+loFspTriX/xv4KR8=";
  };

  nativeBuildInputs = [setuptools];

  propagatedBuildInputs = [
    pyglet
  ];

  nativeCheckInputs = [
  ];

  meta = {
    description = "Python library for importing Wavefront .obj files";
    homepage = "https://github.com/pywavefront/PyWavefront";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [muellerbernd];
  };
}
