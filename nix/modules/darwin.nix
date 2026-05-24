# nix/modules/darwin.nix — auto-generated from rayon.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.rayon; in {
  options.services.rayon = {
    enable = lib.mkEnableOption "rayon";
    package = lib.mkOption { type = lib.types.package; default = pkgs.rayon or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
