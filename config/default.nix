{
  pkgs,
  config,
  lib,
  inputs,
  ...
}: {
  imports = [./core/default.nix ./plugins/default.nix];
}
