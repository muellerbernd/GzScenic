{
  lib,
  buildPythonPackage,
  fetchPypi,
}:
buildPythonPackage rec {
  pname = "PyWavefront";
  version = "1.1.3";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "";
  };

  buildInputs = [
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
