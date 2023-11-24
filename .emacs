(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(bongo-enabled-backends '(mpv))
 '(custom-enabled-themes '(cherry-blossom))
 '(custom-safe-themes
   '("2aa073a18b2ba860d24d2cd857bcce34d7107b6967099be646d9c95f53ef3643" "e9d47d6d41e42a8313c81995a60b2af6588e9f01a1cf19ca42669a7ffd5c2fde" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "20bf9f519f78b247da9ccf974c31d3537bee613ff11579f539b2781246dee73b" "6bc387a588201caf31151205e4e468f382ecc0b888bac98b2b525006f7cb3307" default))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(wallpaper cherry-blossom-theme helm-bufler mpv yeetube helm-commandlinefu helm-helm-commands helm-themes helm-fuz helm-flyspell helm-dictionary jabber mastodon "helm-youtube" "helm-youtube" "helm-youtube.el" erc-yt mentor exwm flyspell-correct-helm ## flycheck-aspell cyberpunk-theme))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "goldenrod" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))



;;
(org-babel-load-file (expand-file-name "~/.cof.org"))
