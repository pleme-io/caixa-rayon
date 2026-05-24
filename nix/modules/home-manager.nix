# nix/modules/home-manager.nix — auto-generated from rayon.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.rayon; in {
  options.programs.rayon = {
    enable = lib.mkEnableOption "rayon";
    package = lib.mkOption { type = lib.types.package; default = pkgs.rayon or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
