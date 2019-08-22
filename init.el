;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; base distribution to use. this is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(autohotkey
     windows-scripts
     rust
     html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     better-defaults
     emacs-lisp
     ;; lsp
     git
     helm
     ;; ivy
     markdown
     multiple-cursors
     ;; org
     ;; spell-checking
     ;; syntax-checking
     treemacs
     latex
     markdown
     ;; pandoc
     ranger
     pdf
     deft
     emojify-mode
     ;; version-control
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     themes-megapack
     (python :variables
             python-test-runner 'pytest)
     (chinese :variables
              ;; chinese-enable-fcitx t
              chinese-enable-youdao-dict t
              ;; chinese-enable-avy-pinyin nil
              )
     (org :variables
          org-projectile-file "TODOs.org"
          org-support-shift-select t
          org-want-todo-bindings t

          ;;                               ;journal
          ;; org-enable-org-journal-support t
          ;; org-journal-dir "~/Dropbox/org/journal/"
          ;; org-journal-file-format "%Y-%m-%d"
          ;; org-journal-date-prefix "#+TITLE: "
          ;; org-journal-date-format "%A, %B %d %Y"
          ;; org-journal-time-prefix "* "
          ;; org-journal-time-format ""
                                        ;
          org-enable-hugo-support t
          org-enable-sticky-header t
          ;; org-enable-epub-support t
          )
     (spacemacs-layouts :variables
                        layouts-enable-autosave t
                        layouts-autosave-delay 300)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      focus
                                      cnfonts
                                      ox-hugo
                                      ;; easy-hugo 
                                      anki-editor
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5


   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa t

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode
   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         spacemacs-light
                         spacemacs-dark
                         )

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 14.0
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state t

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.3

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but lines are only visual lines are counted. For example, folded lines
   ;; will not be counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis 'C-q

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%a -- Spacemacs"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; 设置垃圾回收，在 Windows 下，emacs25 版本会频繁出发垃圾回收，所以需要设置
  (when (eq system-type 'windows-nt)
    (setq gc-cons-threshold (* 512 1024 1024))
    (setq gc-cons-percentage 0.5)
    (run-with-idle-timer 5 t #'garbage-collect)
    ;; 显示垃圾回收信息，这个可以作为调试用
    ;; (setq garbage-collection-messages t)
    )
  ;; (setq configuration-layer-elpa-archives
  ;;     '(("melpa-cn" . "http://elpa.emacs-china.org/melpa/")
  ;;       ("org-cn"   . "http://elpa.emacs-china.org/org/")
  ;;       ("gnu-cn"   . "http://elpa.emacs-china.org/gnu/")))

  ;; ;; Don’t compact font caches during GC.
  (setq inhibit-compacting-font-caches t) 
  ;; proxy
  (setq url-proxy-services '(("no_proxy" . "127.0.0.1")
                             ("http" . "127.0.0.1:8010")
                             ("https" . "127.0.0.1:8010")
                             ))
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

;;;;;;;;;;;;;;
;;;  Theme ;;;
;;;;;;;;;;;;;;

  ;; 调试好久的颜色，效果超赞！todo keywords 增加背景色
  ;; (setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
  ;;                                ("HAND" . (:foreground "white" :background "#2E8B57"  :weight bold))
  ;;                                ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))

;;;;;;;;;;;;;;
  ;; 显示相关 ;;
;;;;;;;;;;;;;;

  ;; 在状态栏显示时间

  (setq focus-dimness 20)
  (display-time-mode 1)
  ;;字体问题
  (cnfonts-enable) 
  (cnfonts-set-spacemacs-fallback-fonts)

  ;; 更改spacemacs自带的字体快捷键
  (defun spacemacs/zoom-frm-in ()
    "zoom in frame, but keep the same pixel size"
    (interactive)
    (cnfonts-increase-fontsize))

  (defun spacemacs/zoom-frm-out ()
    "zoom out frame, but keep the same pixel size"
    (interactive)
    (cnfonts-decrease-fontsize))

  (defun spacemacs/zoom-frm-unzoom ()
    "Unzoom current frame, keeping the same pixel size"
    (interactive)
    (cnfonts-switch-profile))


  ;;------------end----------------;;


;;;;;;;;;;;;;;
;;; Python ;;;
;;;;;;;;;;;;;;

  (set-language-environment 'utf-8)
  ;; (set-language-environment 'Chinese-GB18030)
  (add-hook 'python-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends) '(company-dabbrev company-diag)))) ;fixed complement
  ;; (add-to-list 'load-path "C:/Users/Elliott/.spacemacs.d/anaconda-mode")
  ;; (setenv "WORKON_HOME" "C:/tools/Anaconda3/Lib/site-packages/conda_env")

  ;; (setq python-shell-interpreter "ipython"
  ;;       python-shell-interpreter-args "--simple-prompt -i")

  ;; (setq spacemacs/python-execute-file "ipython"
  ;;       ;; python-shell-interpreter-args "-i"
  ;;       )


  ;; (setq python-shell-interpreter "c:/tools/Anaconda3/python.exe")
  ;; ;; (setq py-python-command "/usr/local/bin/python2")
  ;; (setq python-shell-completion-native-enable nil)
  ;;------------end----------------;;




;;;;;;;;;;;;;;
  ;;Additional keyboard;;
;;;;;;;;;;;;;;

  (evil-leader/set-key "oy" 'youdao-dictionary-search-at-point+)
  (evil-leader/set-key "od" 'find-by-pinyin-dired)
  (evil-leader/set-key "ote" 'evil-org-mode)
  (evil-leader/set-key "otf" 'focus-mode)
  (evil-leader/set-key "ott" 'spaceline-toggle-org-clock)
  ;; (define-key evil-insert-state-map (kbd "C-]") 'forward-char)
  ;;------------end----------------;;




;;;;;;;;;;;;;;
;;;  ahk   ;;;
;;;;;;;;;;;;;;
  (defun my-ahk-switch-english() ; ; buffer-local variables这类东西你就应该（基本上也只能）写在hook里
    ;; (add-to-list  'company-backends  'company-c-headers)
    ;; (setq flycheck-gcc-language-standard " c++11 ")
    ;; (setq flycheck-clang-language-standard " c++11 ") ; ; ocal key-binding的相关设定一起放在hook中是很常见的作法
    ;; (define-key c++-mode-map (kbd "Cc h") 'ff-find-other-file) ; ;这里放一些希望随着C++ mode自动启动的minor-mode
    ;; (flycheck-mode 1)
    ;; (rainbow-delimiters-mode-enable)
    ;;(write-region "1" nil "C:\\software\\autohotkey\\Capslock+\\userAHK\\evil.txt")

    (w32-shell-execute "runas" "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem_get_status.ahk")
    ;; (shell-command "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem_to_english.ahk")
    )

  (defun get-string-from-file (my-file)
    "Return filePath's file content."
    (with-temp-buffer
      (insert-file-contents my-file)
      (buffer-string)))

  (defun my-ahk-switch-chinese() ; ; buffer-local variables这类东西你就应该（基本上也只能）写在hook里
    ;; (add-to-list  'company-backends  'company-c-headers)
    ;; (setq flycheck-gcc-language-standard " c++11 ")
    ;; (setq flycheck-clang-language-standard " c++11 ") ; ; ocal key-binding的相关设定一起放在hook中是很常见的作法
    ;; (define-key c++-mode-map (kbd "Cc h") 'ff-find-other-file) ; ;这里放一些希望随着C++ mode自动启动的minor-mode
    ;; (flycheck-mode 1)
    ;; (rainbow-delimiters-mode-enable)
    ;;(write-region "1" nil "C:\\software\\autohotkey\\Capslock+\\userAHK\\evil.txt")
    ;; (w32-shell-execute "runas" "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem_get_status.ahk")
    (setq iem-status (get-string-from-file "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\evil.txt"))
    

    (if (= (string-to-number iem-status) 1)
        (w32-shell-execute "runas" "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem_to_chinese.ahk") nil)
        ;; (shell-command "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem_to_chinese.ahk")
    )

  (defun my-iem-on()
    "nothing"
    (interactive)
    (add-hook 'evil-normal-state-entry-hook 'my-ahk-switch-english)
    (add-hook 'evil-insert-state-entry-hook 'my-ahk-switch-chinese)
    )

  (defun my-iem-off()
    "nothing"
    (interactive)
    (remove-hook 'evil-normal-state-entry-hook 'my-ahk-switch-english)
    (remove-hook 'evil-insert-state-entry-hook 'my-ahk-switch-chinese)
    )
  (my-ahk-switch-english)
  (my-iem-on)
  ;; agenda 下调用比较缓慢,这里暂时关闭了
  (add-hook 'org-agenda-mode-hook 'my-iem-off)
  (add-hook 'org-agenda-finalize-hook 'my-iem-on)
  ;; (remove-hook 'org-agenda-finalize-hook 'my-iem-off)

  (evil-leader/set-key "oti" 'my-iem-on)
  (evil-leader/set-key "otI" 'my-iem-off)


;;;;;;;;;;;;;;
;;;  Org   ;;;
;;;;;;;;;;;;;;
  ;; hooks
  ;; (defun my-org-mode-hook ()
  ;;   (setq js2-basic-offset 2)
  ;;   (setq js-indent-level 2)
  ;;   (setq js2-include-node-externs t)
  ;;   (setq js2-strict-missing-semi-warning nil))
  ;; (add-hook 'js2-mode-hook 'my-js-mode-hook)
  (setq-default org-download-image-dir "~/Dropbox/org/pictures")
  (require 'org-download)
  ;; Drag-and-drop to `dired`
  ;; (add-hook 'org-mode-hook 'emojify-mode)
  (add-hook 'org-mode-hook 'aggressive-indent-mode)
  (add-hook 'org-mode-hook 'auto-fill-mode)
  (add-hook 'org-mode-hook 'smartparens-mode)

  (add-hook 'dired-mode-hook 'org-download-enable)
  ;; https://github.com/KingBing/blog-src/blob/e259933e9bc5f246fde50645f024731a16bb6bbc/blog/%E5%9C%A8%20org-mode%20%E4%B8%AD%E9%A1%AF%E7%A4%BA%E5%9C%96%E7%89%87.org
  (setq org-image-actual-width '(300))       ; Fallback to width 300

  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
  (with-eval-after-load 'org
    ;; 使模板生效
    ;; (require 'org-tempo)
    ;; (setq org-ellipsis " ▼")
    ;; (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
    (setq org-enable-github-support t)
    (setq org-enable-reveal-js-support t)

    ; 一段关于设置frame标题的代码,在标题显示clock时钟
    ;; (defun sanityinc/show-org-clock-in-header-line ()
    ;;   (setq-default header-line-format '((" " org-mode-line-string " "))))

    ;; (defun sanityinc/hide-org-clock-from-header-line ()
    ;;   (setq-default header-line-format nil))

    ;; (add-hook 'org-clock-in-hook 'sanityinc/show-org-clock-in-header-line)
    ;; (add-hook 'org-clock-out-hook 'sanityinc/hide-org-clock-from-header-line)
    ;; (add-hook 'org-clock-cancel-hook 'sanityinc/hide-org-clock-from-header-line)

    ;; (after-load 'org-clock
    ;;             (define-key org-clock-mode-line-map [header-line mouse-2] 'org-clock-goto)
    ;;             (define-key org-clock-mode-line-map [header-line mouse-1] 'org-clock-menu))

    ;; (when (and *is-a-mac* (file-directory-p "/Applications/org-clock-statusbar.app"))
    ;;   (add-hook 'org-clock-in-hook
    ;;             (lambda () (call-process "/usr/bin/osascript" nil 0 nil "-e"
    ;;                                      (concat "tell application \"org-clock-statusbar\" to clock in \"" org-clock-current-task "\""))))

;;; custom org emhasis color
    ;; (require 'org)
    ;; (require 'cl)   ; for delete*
    ;; (setq org-emphasis-alist
    ;;       (cons '("+" '(:strike-through t :foreground "gray"))
    ;;             (delete* "+" org-emphasis-alist :key 'car :test 'equal)))

    ;; (setq org-emphasis-alist
    ;;       (cons '("*" '(:emphasis t :foreground "blue"))
    ;;             (delete* "*" org-emphasis-alist :key 'car :test 'equal)))

    ;; (org-refile-targets (quote (("newgtd.org" :maxlevel . 1)
    ;;                              ("someday.org" :level . 2))))


    (setq-default org-default-notes-file "~/Dropbox/org/GTD/task.org")
    ;; (setq org-capture-templates
    ;;       '(("z" "Todo" entry (file+headline "~/Dropbox/org/gtd.org" "Tasks")
    ;;          "* TODO %?\n  %i\n  %a")
    ;;         ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
    ;;          "* %?\nEntered on %U\n  %i\n  %a")))

    (setq org-capture-templates nil)
    ;; 任务相关捕获模板
    (add-to-list 'org-capture-templates '("t" "Tasks"))
    (add-to-list 'org-capture-templates
                 '("tr" "Book Reading Task" entry
                   (file+olp "~/Dropbox/org/GTD/task.org" "Reading" "Book")
                   "* TODO %^{book name}\n%u\n%a\n" :clock-in t :clock-resume t))
    (add-to-list 'org-capture-templates
                 '("tt" "Temp" entry
                   (file+headline "~/Dropbox/org/GTD/task.org" "Tasks")
                   "* TODO %^{Temp}\n%u\n%a\n" :clock-in t :clock-resume t))
    ;; 判断一个任务是否与当前任务有关，有关得则放入 temp，无关的放入 Project
    (add-to-list 'org-capture-templates
                 '("tp" "Project" entry
                   (file+headline "~/Dropbox/org/GTD/task.org" "Project")
                   "* TODO %^{Project}\n%u\n" :clock-in t :clock-resume t))
    ;; 有的时候，会有临时的小任务，比如说，将要出门，需要准备一些东西，
    ;; 这个迷你项目得作用就来了，想到一条写一条
    (add-to-list 'org-capture-templates
                 '("tm" "Mini" item
                   (file+headline "~/Dropbox/org/GTD/task.org" "Mini_Project")
                   "%^{content}"))
    ;; 想法类相关捕获模板
    (add-to-list 'org-capture-templates '("i" "Idea"))
    (add-to-list 'org-capture-templates
                 '("it" "Temp Idea" entry
                   (file+headline "~/Dropbox/org/GTD/ideas.org" "Temp")
                   "* %^{core_idea}\n%u\n" :clock-in t :clock-resume t))
    (add-to-list 'org-capture-templates
                 '("ip" "About people" entry
                   (file+headline "~/Dropbox/org/GTD/ideas.org" "People")
                   "* %^{core_idea}\n%u\n" :clock-in t :clock-resume t))
    (add-to-list 'org-capture-templates
                 '("im" "About matter" entry
                   (file+headline "~/Dropbox/org/GTD/ideas.org" "Matter")
                   "* %^{core_idea}\n%u\n" :clock-in t :clock-resume t))
    ;; 日志
    (add-to-list 'org-capture-templates
                 '("j" "Journal" entry (file+datetree "~/Dropbox/org/GTD/Journal.org")
                   "* %U - %^{heading}\n  %?" :clock-in t :clock-resume t))
    ;; GTD 记录 https://orgmode.org/manual/Template-expansion.html
    (add-to-list 'org-capture-templates
                 '("g" "GTD" entry (file+datetree "c:/Users/xx299/Dropbox/org/GTD/GTD_problem.org")
                   "* TODO %U - %^{heading} %^G\n  %a\n\n   %?" :clock-in t :clock-resume t))

;;; ORG-MODE:  * My Task
;;;              SCHEDULED: <%%(diary-last-day-of-month date)>
;;; DIARY:  %%(diary-last-day-of-month date) Last Day of the Month
;;; See also:  (setq org-agenda-include-diary t)
;;; (diary-last-day-of-month '(2 28 2017))
    (defun diary-last-day-of-month (date)
      "Return `t` if DATE is the last day of the month."
      (let* ((day (calendar-extract-day date))
             (month (calendar-extract-month date))
             (year (calendar-extract-year date))
             (last-day-of-month
              (calendar-last-day-of-month month year)))
        (= day last-day-of-month)))

    (setq org-agenda-custom-commands
          '(
            ("w" . "Task filter")
            ("wa" "A" tags-todo "+PRIORITY=\"A\"")
            ("wb" "B" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
            ;; ("wb" "B" tags-todo "+PRIORITY=\"B\"")
            ("wc" "C" tags-todo "+PRIORITY=\"C\"")
            ("b" "Blog" tags-todo "BLOG")
            ("p" . "Project")
            ("pw" tags-todo "PROJECT+WORK+CATEGORY=\"work\"")
            ("pl" tags-todo "PROJECT+DREAM+CATEGORY=\"xx299x\"")
            ("W" "Weekly Review"
             ((stuck "") ;; review stuck projects as designated by org-stuck-projects
              (tags-todo "PROJECT") ;; review all projects (assuming you use todo keywords to designate projects)
              ))))
    ;; 这里是一个journal的功能, 与上面的日志冲突. 不能呈树状展示,导致消息不集中. 这样浏览起来会及其麻烦,故不使用
    ;; (defun org-journal-find-location ()
    ;;   ;; Open today's journal, but specify a non-nil prefix argument in order to
    ;;   ;; inhibit inserting the heading; org-capture will insert the heading.
    ;;   (org-journal-new-entry t)
    ;;   ;; Position point on the journal's top-level heading so that org-capture
    ;;   ;; will add the new entry as a child entry.
    ;;   (goto-char (point-min)))

    ;; (setq org-capture-templates '(("j" "Journal entry" entry (function org-journal-find-location)
    ;;                                "* %(format-time-string org-journal-time-format)%^{Title}\n%i%?")))


    ;;----------------------------;;
    (add-to-list 'org-capture-templates '("p" "Project"))
    (add-to-list 'org-capture-templates
                 '("pe" "English_System" item
                   (file+headline "~/Dropbox/org/GTD/task.org" "English_system")
                   "%^{content}"))



    ;;----------------------------;;
    (setq org-agenda-files
          (append (file-expand-wildcards "~/Dropbox/org/GTD")
                  ))
    (setq org-todo-keywords
          '((sequence "TODO(t!)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
            ))



;;;;;;;;;;;;;;
    ;; Org-Latex;;
;;;;;;;;;;;;;;

    (setq org-preview-latex-default-process 'dvisvgm)
    (setq org-preview-latex-process-alist
          '((dvisvgm :programs
                     ("xelatex" "dvisvgm")
                     :description "xdv > svg" :message "you need to install the programs: xelatex and dvisvgm." :use-xcolor t :image-input-type "xdv" :image-output-type "svg" :image-size-adjust
                     (1.7 . 1.5)
                     :latex-compiler
                     ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")
                     :image-converter
                     ("dvisvgm %f -n -b min -c %S -o %O"))
            (imagemagick :programs
                         ("xelatex" "convert")
                         :description "pdf > png" :message "you need to install the programs: xelatex and imagemagick." :use-xcolor t :image-input-type "pdf" :image-output-type "png" :image-size-adjust
                         (1.0 . 1.0)
                         :latex-compiler
                         ("xelatex -interaction nonstopmode -output-directory %o %f")
                         :image-converter
                         ("convert -density %D -trim -antialias %f -quality 100 %O"))))

    ;; 安装 XeLaTeX 是另外一个故事了..
    (setq Tex-command-default "XeLaTeX")
    ;; (setq org-latex-compiler "xelatex")


    ;;前面的东西必要动
    ;;org-mode export to latex
    (require 'ox-latex)
    (setq org-export-latex-listings t)

    ;;org-mode source code setup in exporting to latex
    (add-to-list 'org-latex-listings '("" "listings"))
    (add-to-list 'org-latex-listings '("" "color"))

    (add-to-list 'org-latex-packages-alist
                 '("" "xcolor" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "listings" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "fontspec" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "indentfirst" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "xunicode" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "geometry"))
    (add-to-list 'org-latex-packages-alist
                 '("" "float"))
    (add-to-list 'org-latex-packages-alist
                 '("" "longtable"))
    (add-to-list 'org-latex-packages-alist
                 '("" "tikz"))
    (add-to-list 'org-latex-packages-alist
                 '("" "fancyhdr"))
    (add-to-list 'org-latex-packages-alist
                 '("" "textcomp"))
    (add-to-list 'org-latex-packages-alist
                 '("" "amsmath"))
    (add-to-list 'org-latex-packages-alist
                 '("" "tabularx" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "booktabs" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "grffile" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "wrapfig" t))
    (add-to-list 'org-latex-packages-alist
                 '("normalem" "ulem" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "amssymb" t))
    (add-to-list 'org-latex-packages-alist
                 '("" "capt-of" t))
    (add-to-list 'org-latex-packages-alist
                 '("figuresright" "rotating" t))
    (add-to-list 'org-latex-packages-alist
                 '("Lenny" "fncychap" t))

    (add-to-list 'org-latex-classes
                 '("lengyue-org-book"
                   "\\documentclass{book}
\\usepackage[slantfont, boldfont]{xeCJK}
% chapter set
\\usepackage{titlesec}
\\usepackage{hyperref}

[NO-DEFAULT-PACKAGES]
[PACKAGES]




\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                   ("\\chapter{%s}" . "\\chapter*{%s}")
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

    (add-to-list 'org-latex-classes
                 '("article"
                   "\\documentclass{article}
\\usepackage[slantfont, boldfont]{xeCJK}
\\usepackage{titlesec}
\\usepackage{hyperref}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\parindent 2em


\\setCJKmainfont{微软雅黑} % 设置缺省中文字体
\\setCJKsansfont{微软雅黑}
\\setCJKmonofont{微软雅黑}

\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

    (add-to-list 'org-latex-classes
                 '("lengyue-org-beamer"
                   "\\documentclass{beamer}
\\usepackage[slantfont, boldfont]{xeCJK}
% beamer set
\\usepackage[none]{hyphenat}
\\usepackage[abs]{overpic}

[NO-DEFAULT-PACKAGES]
[PACKAGES]

\\setCJKmainfont{微软雅黑} % 设置缺省中文字体
\\setCJKsansfont{微软雅黑}
\\setCJKmonofont{微软雅黑}

\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}

%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}

% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt

% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}

[EXTRA]
"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))

    (setq org-latex-pdf-process
          '("xelatex -interaction nonstopmode -output-directory %o %f"
            ;;"biber %b" "xelatex -interaction nonstopmode -output-directory %o %f"
            "bibtex %b"
            "xelatex -interaction nonstopmode -output-directory %o %f"
            "xelatex -interaction nonstopmode -output-directory %o %f"))

    ;;LaTeX config
    (add-hook 'LaTeX-mode-hook
              (lambda ()
                (setq TeX-auto-untabify t     ; remove all tabs before saving
                      TeX-engine 'xelatex     ; use xelatex default
                      TeX-show-compilation t) ; display compilation windows
                (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
                (setq TeX-save-query nil)
                (imenu-add-menubar-index)
                (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)))
    )

  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (mapcar '(lambda (file)
               (when (file-exists-p file)
                 (push file org-agenda-files)))
            (org-projectile-todo-files)))

  ;;------------end----------------;;




;;;;;;;;;;;;;;
  ;;  Ox-Org  ;;
;;;;;;;;;;;;;;
  (with-eval-after-load 'ox
    (require 'ox-hugo))
  ;; (require 'ox-hugo-auto-export)
  ;;deft

  (setq deft-extensions '("txt" "tex" "org" "md"))
  (setq deft-directory "~/Dropbox/org/Notes")
  (setq deft-recursive t)
  (setq deft-file-naming-rules '((noslash . "_")))
  (setq deft-text-mode 'org-mode)
  (setq deft-use-filter-string-for-filename t)
  (setq deft-org-mode-title-prefix t)
  (setq deft-use-filename-as-title nil)
  (setq deft-strip-summary-regexp
        (concat "\\("
                "[\n\t]"                    ;; blank
                "\\|^#\\+[[:upper:]_]+:.*$" ;; org-mode metadata
                "\\|^#\\+[[:alnum:]_]+:.*$" ;; org-mode metadata
                "\\|^#\s#\\+?.*$" ;; org-mode metadata
                "\\)"))
  (global-set-key [f8] 'deft)
  ;; (setq deft-strip-title-regexp "")
  (defun ironman-deft-search-for(filter)
    (interactive "MFilter: ")
    (spacemacs/deft)
    (deft-filter filter t)
    )

  ;;------------end----------------;;



;;;;;;;;;;;;;;
;;;  other ;;;
;;;;;;;;;;;;;;
  (setq pdf-info-epdfinfo-program '"c:/users/xx299/.spacemacs.d/pdf-tools-20190413.2018/epdfinfo.exe")

  (setq treemacs-filewatch-mode t)      ;
  (setq treemacs-file-event-delay 1000)
  (setq treemacs-use-collapsed-directories 3)
  ;; block the ".#" file generate https://www.gnu.org/software/emacs/manual/html_node/emacs/Interlocking.html#Interlocking
  (setq create-lockfiles nil)

  ;; (let ((fcitx-path "C:\\software\\bat\\bcn"))
  ;;   (setenv "PATH" (concat fcitx-path ";" (getenv "PATH")))
  ;;   (add-to-list 'exec-path fcitx-path))

  ;; Make sure the following comes before `(fcitx-aggressive-setup)'
  ;; (setq fcitx-active-evil-states '(insert emacs hybrid)) ; if you use hybrid mode
  ;; (fcitx-aggressive-setup)
  ;; (fcitx-prefix-keys-add "M-m") ; M-m is common in Spacemacs
  ;; (setq fcitx-prefix-keys-polling-time 1)
  ;; (fcitx-prefix-keys-turn-on)
  ;; (setq fcitx-use-dbus t) ; uncomment if you're using Linux

  ;; (setq adaptive-fill-first-line-regexp "^\\* *$")
  ;; (setq adaptive-fill-first-line-regexp "")

  ;; Anki a problem
  (setq request-curl "C:\\tools\\msys2\\usr\\bin\\curl.exe")

  (setq request-log-level 'debug)
  ;;------------end----------------;;




;;;;;;;;;;;;;;
;;;  other ;;;
;;;;;;;;;;;;;;
  (add-to-list `yas-snippet-dirs
               "~/.spacemacs.d/snippets" ;; personal snippets
               ;; "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
               ;; "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
               )

  (yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.





  ;;------------end----------------;;

  )
(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (powershell helm-gtags helm helm-core ggtags counsel-gtags rust-mode wgrep smex ivy-xref ivy-purpose ivy-hydra counsel-projectile counsel-css counsel swiper ivy pdf-tools tablist ox-gfm org-re-reveal youdao-dictionary yapfify ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package treemacs-projectile treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons smeargle restart-emacs ranger rainbow-delimiters pytest pyim pyenv-mode py-isort popwin pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox pangu-spacing pandoc-mode ox-pandoc ox-hugo ox-epub overseer orgit org-sticky-header org-projectile org-present org-pomodoro org-mime org-journal org-download org-cliplink org-bullets org-brain open-junk-file nameless move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum live-py-mode link-hint indent-guide importmagic hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ag google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md font-lock+ focus flycheck-package flx-ido find-by-pinyin-dired fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish devdocs define-word cython-mode column-enforce-mode cnfonts clean-aindent-mode chinese-conv centered-cursor-mode blacken auto-highlight-symbol auto-compile auctex-latexmk anaconda-mode aggressive-indent ace-pinyin ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
