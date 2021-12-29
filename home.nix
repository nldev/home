{ config, pkgs, ... }:

let
  fetchGH = fq: rev: builtins.fetchTarball ("https://github.com/" + fq + "/archive/" + rev + ".tar.gz");
  locale = "C.UTF-8";
  homedir = builtins.getEnv "HOME";
  username = builtins.getEnv "USER";
  neuron = fetchGH "srid/neuron" "dd900dd249742aabfb1dba89f498b6afdb7f4531";
in
{
  home = {
    packages = with pkgs; [
      gcc
      lua
      dos2unix
      ranger
      neovim
      tmux
      ripgrep
      python27
      python310
      nodejs-17_x
      powershell
      dotnet-aspnetcore
      gh
      bat
      sqlite
      (import neuron {name = "neuron";})
    ];

    sessionVariables = {
      LANG = locale;
      LC_ALL = locale;
      TMUX_TMPDIR = "/tmp";
    };

    username = username;
    homeDirectory = homedir;
    stateVersion = "21.11";
  };

  programs.home-manager.enable = true;

  # git
  programs.git = {
    enable = true;
    userName = "nl";
    userEmail = "nldev00@pm.me";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };

  # direnv
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  # dotfiles
  home.file.".config/nvim/init.vim".source = ./dots/config/nvim/init.vim;
  home.file.".config/nvim/coc-settings.json".source = ./dots/config/nvim/coc-settings.json;
  home.file.".config/nvim/autoload/plug.vim".source = ./dots/config/nvim/autoload/plug.vim;
  home.file.".vimrc".source = ./dots/vimrc;

  # tmux
  # programs.tmux = {
  #   enable = true;
  #   terminal = "screen-256color";
  #   shortcut = "a";
  #   baseIndex = 1;
  #   keyMode = "vi";
  #   sensibleOnTop  = true;
  #   plugins = with pkgs; [
  #     tmuxPlugins.pain-control
  #     tmuxPlugins.copycat
  #     tmuxPlugins.yank
  #     tmuxPlugins.logging
  #   ];
  # };

  # neovim
  # programs.neovim = {
  #   plugins = [
  #     {
  #       plugin = pkgs.vimPlugins.sql-nvim;
  #       config = "let g:sqlite_clib_path = '${pkgs.sqlite.out}/lib/libsqlite3.so'";
  #     }
  #   ];
  # };
}
