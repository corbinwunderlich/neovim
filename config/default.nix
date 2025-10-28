{...}: {
  imports = [./core/default.nix ./plugins/default.nix];

  viAlias = true;
  vimAlias = true;

  withPython3 = false;
  withRuby = false;
}
