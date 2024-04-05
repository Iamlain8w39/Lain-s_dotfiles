;; This is an operating system configuration generated
;; by the graphical installer.
;;
;; Once installation is complete, you can learn and modify
;; this file to tweak the system configuration, and pass it
;; to the 'guix system reconfigure' command to effect your
;; changes.


;; Indicate which modules to import to access the variables
;; used in this configuration.
(use-modules (gnu)
	     (nongnu packages linux)
             (nongnu system linux-initrd))
(use-service-modules cups desktop networking ssh xorg)

(operating-system
  (kernel linux)
  (initrd microcode-initrd)
  (firmware (list linux-firmware))
  (locale "en_US.utf8")
  (timezone "America/Denver")
  (keyboard-layout (keyboard-layout "us"))
  (host-name "lain")

  ;; The list of user accounts ('root' is implicit).
  (users (cons* (user-account
                  (name "lain")
                  (comment "lain@lain")
                  (group "users")
                  (home-directory "/home/lain")
                  (supplementary-groups '("wheel" "netdev" "audio" "video")))
                %base-user-accounts))

  ;; Packages installed system-wide.  Users can also install packages
  ;; under their own account: use 'guix search KEYWORD' to search
  ;; for packages and 'guix install PACKAGE' to install a package
    (packages (append (map specification->package
  ;; emacs stuff
                            '("emacs" "emacs-exwm" "emacs-desktop-environment" "hunspell" "hunspell-dict-en"
  ;; everything else
			     "picom" "gcc" "make" "cmake" "ntfs-3g" "nss-certs"))
                    %base-packages))


  ;; list of system services.  To search for available
  ;; services, run 'guix system search KEYWORD' in a terminal.
  (services
   (append (list

                 ;; To configure OpenSSH, pass an 'openssh-configuration'
                 ;; record as a second argument to 'service' below.
                 (service openssh-service-type)
                 (service tor-service-type)
                 (set-xorg-configuration
                  (xorg-configuration (keyboard-layout keyboard-layout))))

           ;; This is the default list of services we
           ;; are appending to.
           %desktop-services))
  (bootloader (bootloader-configuration
                (bootloader grub-bootloader)
                (targets (list "/dev/nvme0n1"))
                (keyboard-layout keyboard-layout)))
  (swap-devices (list (swap-space
                        (target (uuid
                                 "2d0dde7b-1916-40db-94f4-60ff434d2c00")))))

  ;; The list of file systems that get "mounted".  The unique
  ;; file system identifiers there ("UUIDs") can be obtained
  ;; by running 'blkid' in a terminal.
  (file-systems (cons* (file-system
                         (mount-point "/")
                         (device (uuid
                                  "d6b781e3-dbbc-4c1e-80ce-c6ceb63c1cb5"
                                  'ext4))
                         (type "ext4")) %base-file-systems)))
