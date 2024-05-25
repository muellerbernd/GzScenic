{ lib
, buildPythonPackage
, setuptools
 }:

buildPythonPackage rec {
  pname = "gzscenic";
  version = "0.1dev";
  pyproject = true;

  src = ./.;
  postPatch = ''
  '';

  build-system = [
    setuptools
  ];

  dependencies = [
    setuptools
  ];

  nativeCheckInputs = [
  ];

  meta = {
    changelog = "https://github.com/pytest-dev/pytest/releases/tag/${version}";
    description = "Framework for writing tests";
    homepage = "https://github.com/pytest-dev/pytest";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ domenkozar lovek323 madjar lsix ];
  };
}

