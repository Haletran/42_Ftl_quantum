{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Python (dernière version disponible)
    python3
    python3Packages.pip
    python3Packages.virtualenv
    
    # Outils de développement
    git
    gnumake
  ];

  shellHook = ''
    echo "Python Qiskit Development Environment"
    echo "-------------------------------------"
    echo "Python $(python --version)"
    echo ""
    
    # Créer un environnement virtuel s'il n'existe pas
    if [ ! -d "venv" ]; then
      echo "Creating virtual environment..."
      python -m venv venv
      source venv/bin/activate
      echo "Installing dependencies from requirements.txt..."
      pip install -r requirements.txt
    else
      echo "Virtual environment exists. Activating..."
      source venv/bin/activate
    fi
    
    # Afficher les paquets installés
    echo ""
    echo "Installed packages:"
    pip list
    echo "-------------------------------------"
    
    # Configuration du PYTHONPATH
    export PYTHONPATH=$PYTHONPATH:$PWD
    clear
    export PS1='\[\e[38;5;48;3m\]nix-shell\[\e[0m\]: \W \$> '
  '';
}
