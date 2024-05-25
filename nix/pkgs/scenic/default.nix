{
  lib,
  buildPythonPackage,
  fetchPypi,
  flit-core,
}:
buildPythonPackage rec {
  pname = "scenic";
  version = "2.1.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-vtJHqgHU8f9/6Sp6cXHwDJ2kY5Ro3e8sTd7oiik48uY=";
  };

  buildInputs = [
    flit-core
  ];

  nativeCheckInputs = [
  ];

  meta = {
    description = "A compiler and scene generator for the Scenic scenario description language. ";
    homepage = "https://github.com/BerkeleyLearnVerify/Scenic";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [muellerbernd];
  };
}
