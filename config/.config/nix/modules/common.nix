{ pkgs, self, ... }:
{
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = "nix-command flakes";

  environment.systemPackages = with pkgs; [
    vim
    neovim
    atuin
    neofetch
    jq
    gh
    starship
    fzf
    zoxide
    tmux
    ripgrep
    bat
    glow
    eza
    fd
    lazygit
    stow
    infisical
    codex
	yazi
	zsh
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    nerd-fonts.comic-shanns-mono
    cascadia-code
  ];

  programs.zsh.enable = true;

  system.configurationRevision = self.rev or self.dirtyRev or null;
}
