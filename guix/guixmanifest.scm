;; This "manifest" file can be passed to 'guix package -m' to reproduce
;; the content of your profile.  This is "symbolic": it only specifies
;; package names.  To reproduce the exact same profile, you also need to
;; capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(specifications->manifest
  (list "emacs-deferred"
        "emacs-guix"
        "mpv"
        "yt-dlp"
        "emacs-telega-contrib"
        "emacs-telega"
        "emacs-telega-server"
        "telegram-desktop"
        "cmake"
        "emacs"
        "w3m"
        "pamixer"
        "feh"
        "picom"
        "pavucontrol"
        "icecat"
        "git"
        "gimp"
        "pipewire"
        "ghc-emojis"
        "emacs-pdf-tools"
        "emacs-auto-dictionary-mode"
        "imagemagick"
        "tdlib"
        "unzip"
        "arandr"
        "emacs-rainbow-delimiters"
        "ani-cli"
        "ntfs-3g"
        "font-google-noto"
        "make"
        "neofetch"
        "xrandr"
        "tor-client"
        "torsocks"
        "unicode-emoji"
        "hunspell"
        "hunspell-dict-en"
        "uwufetch"))