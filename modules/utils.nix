{pkgs, inputs, config, ...}:
#let 
#  stable = import inputs.nixpkgs-stable { config = config.nixpkgs.config // { allowUnfree = true; }; };
#in 
{
     
     boot.plymouth.enable = true;
    environment.localBinInPath = true;
    environment.systemPackages = (with pkgs; [
        wget
        git
        libreoffice
        gnumake
        fzf
        gh
        stow
        udiskie
        rofi-wayland
        zip
        unzip
        ncmpcpp
        strawberry
        grim
        grimblast
        slurp
        ripgrep
        swappy
        # cava
        yazi
        dolphin
        imv
        mpv
        #mako # notifications
        dunst
        qbittorrent
        keepassxc
        (pkgs.discord.override {
            # remove any overrides that you don't want
            withOpenASAR = false;
            withVencord = true;
            })
        vesktop
        telegram-desktop
        zathura
        wl-clipboard
        jq
        wgnord
        nicotine-plus
        brightnessctl
        btop
        qmk
        ipe
        freecad
        kicad
        bambu-studio
        texliveBasic
        texlivePackages.wrapfig
        rustdesk
        ffmpeg
        (wrapOBS {
            plugins = with obs-studio-plugins; [
                droidcam-obs
            ];
         })
    ]); 
}
