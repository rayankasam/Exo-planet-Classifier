{
  description = "Flake for ML project using Jupyter notebooks, Keras, TensorFlow, and Pandas";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs, ... }:
  let
    systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    forAllSystems = f: nixpkgs.lib.genAttrs systems f;
  in
  {
    devShells = forAllSystems (system: let
      pkgs = import nixpkgs { inherit system; };
    in
    {
      default = pkgs.mkShell {
        buildInputs = [
          (pkgs.python310.withPackages (ps: with ps; [
            ipython
            jupyterlab
            tensorflow
            keras
            pandas
          ]))
        ];
      };
    });
  };
}

