# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage
{pkgs ? import <nixpkgs> {}}:
with pkgs; {
  # The `lib`, `modules`, and `overlay` names are special
  lib = import ./lib {inherit pkgs;}; # functions
  modules = import ./modules; # NixOS modules
  overlays = import ./overlays; # nixpkgs overlays

  framework-grub-theme = callPackage ./pkgs/framework-grub-theme {};
  latencyflex = callPackage ./pkgs/latencyflex {};
  minegrub = callPackage ./pkgs/minegrub {};
  regreet = callPackage ./pkgs/regreet {};
}
