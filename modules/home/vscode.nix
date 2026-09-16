{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      # Python
      ms-python.python
      ms-python.vscode-pylance
      ms-python.debugpy
      ms-python.mypy-type-checker

      # Ruff
      charliermarsh.ruff
    ];
  };
}
