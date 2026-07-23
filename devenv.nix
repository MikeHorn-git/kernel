{ pkgs, ... }:

{
  # https://devenv.sh/packages/
  packages = with pkgs; [ git ];

  # https://devenv.sh/languages/
  languages.shell.enable = true;

  # https://devenv.sh/git-hooks/
  git-hooks.hooks = {
    mdformat.enable = true;
    nixfmt.enable = true;
    shellcheck.enable = true;
    shfmt.enable = true;
    trim-trailing-whitespace.enable = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
