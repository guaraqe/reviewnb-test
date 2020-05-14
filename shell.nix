let
  jupyterLibPath = ../../..;
  jupyter = import jupyterLibPath {};

  iPythonWithPackages = jupyter.kernels.iPythonWith {
      name = "test";
      };

  jupyterlabWithKernels = jupyter.jupyterlabWith {
      kernels = [ iPythonWithPackages ];
  };
in
  jupyterlabWithKernels.env
