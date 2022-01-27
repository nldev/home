{ config, inputs, system, pkgs, ... }:

let
  fetchGH = fq: rev: builtins.fetchTarball ("https://github.com/" + fq + "/archive/" + rev + ".tar.gz");
  locale = "C.UTF-8";
  homedir = builtins.getEnv "HOME";
  username = builtins.getEnv "USER";
  # neuron = fetchGH "srid/neuron" "dd900dd249742aabfb1dba89f498b6afdb7f4531";
in
{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/neovim-nightly-overlay/archive/master.tar.gz;
    }))
  ];

  home = {
    packages = with pkgs; [
      # system
      coreutils
      gnumake
      cmake

      # git
      git
      gh

      # languages
      llvmPackages_13.clang
      llvmPackages_13.lld
      llvm_13
      lua
      python27
      python310
      nodejs-16_x
      powershell
      dotnet-aspnetcore
      dotnet-sdk_6
      cargo

      # language servers
      rnix-lsp
      pyright
      sumneko-lua-language-server

      # dependencies
      openssl
      fzf
      fasd
      sqlite
      ripgrep
      ffmpeg-full

      # programs
      mosh
      tmux
      vim
      # neovim
      neovim-nightly
      neovim-remote
      taskwarrior
      timewarrior
      ranger

      # utilities
      lsix
      exa
      dos2unix
      lynx
      p7zip
      unzip
      mediainfo
      mktemp
      atool
      trash-cli
      viu
      bat
      neofetch
      jq
      # (import neuron {name = "neuron";})
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
    # TODO automatically duplicate abbreviations as aliases via function
    shellInit = "
      set -U fish_greeting \"🐟 blub 。。。\"

      bind \\cs 'clear; commandline -f repaint'

      alias d \"cd\"
      alias e \"nvr --servername /tmp/nvr -s\"
      alias s \"sudo\"
      alias m \"timew\"
      alias t \"task\"
      alias td \"task del\"
      alias tn \"task add\"
      alias n \"task add\"
      alias w \"pwsh.exe\"
      alias wc \"pwsh.exe -c\"
      alias wn \"pwsh.exe -c nvim\"
      alias wv \"pwsh.exe -c vim\"
      alias wh \"pwsh.exe --wd 'C:\\Users\\Administrator'\"
      alias v \"NVIM_LISTEN_ADDRESS=/tmp/nvr nvim\"
      alias a \"cd ~ && tmux new -A -s main\"
      alias b \"cd ~ && tmux new -A -s mobile\"
      alias ad \"tmux kill-session -t main\"
      alias bd \"tmux kill-session -t mobile\"
      alias h \"cd ~\"
      alias g \"git\"
      alias f \"nnn -a\"
      alias i \"home-manager switch\"
      alias u \"nix-channel --update && home-manager switch\"

      abbr d \"cd\"
      abbr e \"nvr --servername /tmp/nvr -s\"
      abbr s \"sudo\"

      abbr m \"timew\"
      abbr t \"task\"
      abbr td \"task del\"
      abbr tn \"task add\"
      abbr n \"task add\"
      abbr w \"pwsh.exe\"
      abbr wc \"pwsh.exe -c\"
      abbr wn \"pwsh.exe -c nvim\"
      abbr wv \"pwsh.exe -c vim\"
      abbr wh \"pwsh.exe --wd 'C:\\Users\\Administrator'\"

      abbr v \"NVIM_LISTEN_ADDRESS=/tmp/nvr nvim\"
      abbr a \"cd ~ && tmux new -A -s main\"
      abbr h \"cd ~\"
      abbr g \"git\"
      abbr f \"nnn -a\"
      abbr i \"home-manager switch\"
      abbr u \"nix-channel --update && home-manager switch\"

      export NNN_OPENER=\"wslopen\"
      export NODE_PATH=~/.npm-packages/lib/node_modules

      fish_add_path -m ~/.npm-packages/bin
      fish_add_path -m ~/sync/bin
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

  # starship
  programs.starship = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      add_newline = true;
    };
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

  # nnn
  programs.nnn = {
    enable = true;
    # bookmarks = {
    #  d = "~/Documents";
    #  D = "~/Downloads";
    #  p = "~/Pictures";
    #  v = "~/Videos";
    # };
    #package = pkgs.nnnDummy;
    #extraPackages = with pkgs; [ foo bar ];
    plugins = {
      # src = ./plugins;
      mappings = {
        o = "fzopen";
        j = "jump";
        p = "preview-tui";
        t = "preview-tabbed";
        c = "fzcd";
        f = "finder";
        i = "imgview";
        v = "vidthumb";
      };
    };
  };

  # dotfiles
  home.file.".config/fish/conf.d/nix-env.fish".source = ./dots/config/fish/conf.d/nix-env.fish;
  home.file.".config/nvim/init.vim".source = ./dots/config/nvim/init.vim;
  home.file.".config/nvim/coc-settings.json".source = ./dots/config/nvim/coc-settings.json;
  home.file.".config/nvim/autoload/plug.vim".source = ./dots/config/nvim/autoload/plug.vim;
  home.file.".vimrc".source = ./dots/vimrc;
  home.file.".tmux.conf".source = ./dots/tmux.conf;
  home.file.".npmrc".source = ./dots/npmrc;
}

