{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python3
    python3Packages.pip
    python3Packages.virtualenv
    gcc
    stdenv.cc.cc.lib
  ];
  
  # Make sure libraries can be found
  LD_LIBRARY_PATH = with pkgs; "${stdenv.cc.cc.lib}/lib";
  
  shellHook = ''
    clear
    if [ ! -d venv ]; then
      echo "Creating virtual environment..."
      python -m venv venv
      source venv/bin/activate
    else
      echo "Venv already exists, activating..."
      source venv/bin/activate
    fi
    export PYTHONPATH=$PYTHONPATH:$PWD
    if [ $VIRTUAL_ENV ]; then
      export PS1='\[\e[38;5;48;3m\](venv) nix-shell\[\e[0m\]: \W \$> '
    else
      export PS1='\[\e[38;5;48;3m\]nix-shell\[\e[0m\]: \W \$> '
    fi
  '';
}