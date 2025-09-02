{ config, pkgs, ... }:

{
  home.username = "dane";
  home.homeDirectory = "/home/dane";

  programs.zsh.enable = true;

  home.packages = with pkgs; [
    firefox
    alacritty
    hyprpaper
    yazi
    qemu
    libvirt
    virt-manager
    dnsmasq
    git
    bat
    fzf
    ripgrep-all
    lsd
    broot
    fish
    zsh
    starship
    zoxide
    zed-editor
    vscode
    steam
    discord
    dua
    ncdu
    tldr
    man
    wget
    curl
    yt-dlp
    iproute2
    nmap
    duf
    sd
    jq
    yq
    choose
    waybar
    cmake
    rustup
    just
    go
    lua
    luarocks
    gcc
    meson
    bison
    btop
    bluez
    networkmanager
    bandwhich
    lynis
    logrotate
    bubblewrap
    pavucontrol
    dunst
    upower
    tlp
    apparmor
    flatpak
    batinfo
    rsync
    uwsm
    tmux
    git
    going
    procs
    imagemagick
    swww
    dhcpcd
    fastfetch
    curlie
    httpie
    xh
    vlc
    neovim
    vim
    emacs
    ansible
    firejail
    fail2ban
    bubblewrap
    easyeffects
    wl-clipboard
    opensnitch
    home-manager
    navi
    quickshell
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = ",preferred,auto,1";

      input = {
        kb_layout = "us";
        follow_mouse = 1;
      };

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;
        "col.active_border" = "0xff82aaff";
        "col.inactive_border" = "0xff3b4252";
      };

      decoration = {
        rounding = 8;
        blur = {
          enabled = true;
          size = 6;
          passes = 2;
        };
      };

      animations = {
        enabled = true;
      };

      exec-once = [
        "waybar"
        "hyprpaper"
      ];

      bind = [
        "SUPER, D, exec, rofi -show drun"
        "SUPER, Q, killactive,"
        "SUPER, T, exec, alacritty"
        "SUPER, B, exec, firefox"
        "SUPER, Y, exec, yazi"
        "SUPER, W, togglefloating,"
        "SUPER, F, fullscreen,"
        "SUPER, Space, exec, rofi -show run"
      ];
    };
  };

  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 28;
        modules-left = [ "clock" ];
        modules-center = [ "workspaces" ];
        modules-right = [ "battery" "pulseaudio" "network" ];
      };
    };
    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font", monospace;
        font-size: 12px;
        color: #ffffff;
      }
      window#waybar {
        background: #1e1e2e;
      }
    '';
  };

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = /usr/share/backgrounds/nixos/nix-wallpaper.png
    wallpaper = ,/usr/share/backgrounds/nixos/nix-wallpaper.png
  '';

  programs.alacritty = {
    enable = true;
    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:size=12";
      };
    };
  };

  programs.home-manager.enable = true;

}
