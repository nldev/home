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
      gnumake
      gcc
      fzf
      lua
      dos2unix
      fasd
      nnn
      ranger
      vim
      neovim
      neovim-remote
      ffmpeg-full
      ripgrep
      python27
      python310
      nodejs-17_x
      powershell
      dotnet-aspnetcore
      neofetch
      gh
      bat
      sqlite
      tmux
      (import neuron {name = "neuron";})
    ];

    sessionVariables = {
      LANG = locale;
      LC_ALL = locale;
    };

    username = username;
    homeDirectory = homedir;
    stateVersion = "21.11";
  };

  programs.home-manager.enable = true;

  # fish
  programs.fish = {
    enable = true;
    loginShellInit = "
      alias e \"nvr -s\"
      alias s \"sudo\"
      alias p \"pwsh.exe\"
      alias a \"tmux new -A -s main\"
      alias c \"cd\"
    ";
    plugins = [
      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "ddeb28a7b6a1f0ec6dae40c636e5ca4908ad160a";
          sha256 = "0c5i7sdrsp0q3vbziqzdyqn4fmp235ax4mn4zslrswvn8g3fvdyh";
        };
      }
      {
        name = "fasd";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "plugin-fasd";
          rev = "38a5b6b6011106092009549e52249c6d6f501fba";
          sha256 = "06v37hqy5yrv5a6ssd1p3cjd9y3hnp19d3ab7dag56fs1qmgyhbs";
        };
      }
    ];
  };

  # fzf
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
  };

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
  home.file.".config/fish/conf.d/nix-env.fish".source = ./dots/config/fish/conf.d/nix-env.fish;
  home.file.".config/nvim/init.vim".source = ./dots/config/nvim/init.vim;
  home.file.".config/nvim/coc-settings.json".source = ./dots/config/nvim/coc-settings.json;
  home.file.".config/nvim/autoload/plug.vim".source = ./dots/config/nvim/autoload/plug.vim;
  home.file.".vimrc".source = ./dots/vimrc;
  home.file.".tmux.conf".source = ./dots/tmux.conf;
}

