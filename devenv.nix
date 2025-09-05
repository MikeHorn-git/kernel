{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ git mdformat nixfmt-classic ];

  # https://devenv.sh/languages/
  languages.shell.enable = true;

  # https://devenv.sh/tasks/
  tasks = {
    "lint:run".exec = ''
      mdformat README.md
      nixfmt devenv.nix
      shellcheck kernel.sh
      shfmt -w kernel.sh'';
  };

  # https://devenv.sh/tests/
  enterTest = ''
    ./kernel.sh
  '';

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    mdformat.enable = true;
    nixfmt-classic.enable = true;
    shellcheck.enable = true;
    shfmt.enable = true;
    trim-trailing-whitespace.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
