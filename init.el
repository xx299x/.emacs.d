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
   '(
     ;; rust
     ;; javascript
     autohotkey
     windows-scripts
     ;; rust
     ;; html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; auto-completion
     ;; better-defaults
     ;; emacs-lisp
     ;; lsp
     ;; git
     helm
     ;; ivy
     ;; markdown
     multiple-cursors
     ;; org
     ;; spell-checking
     ;; syntax-checking
     ;; treemacs
     ;; latex
     markdown
     ;; pandoc
     ;; ranger 浏览文件必备
     ;; ranger
     pdf
     deft
     epub
     ;; emoji
     ;; bibtex 相当于latex模板
     ;; bibtex
     speed-reading ;;幻灯片
     ;; themes-megapack
     ;; version-control
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-positionf 'bottom
     ;; (python :variab
     ;;         python-test-runner 'pytest
     ;;         python-save-before-test nil
     ;;         python-backend 'anaconda)
     (ess :variables
          ess-enable-smart-equals t)
     (chinese :variables
              ;; chinese-enable-fcitx t
              chinese-enable-youdao-dict t
              ;; chinese-enable-avy-pinyin nil
              )
     (org :variables
          org-projectile-file "TODOs.org"
          org-support-shift-select 'always
          org-want-todo-bindings t
          org-enable-reveal-js-support t
          org-enable-github-support t
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
          ;; org-enable-sticky-header t
          ;; org-enable-epub-support t
          )
     (spacemacs-layouts :variables
                        layouts-enable-autosave nil
                        layouts-autosave-delay 300
                        )
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
                                      ;; anki-editor
                                      real-auto-save
                                      ;; jieba
                                      jsonrpc
                                      ;; easy-hugo
                                      ;; 农历
                                      cal-china-x
                                      org-noter
                                      org-super-agenda
                                      olivetti
                                      ;; org-ql
                                      )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    pangu-spacing
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
  (setq org-emphasis-regexp-components
        ;; markup 记号前后允许中文
        (list (concat " \t('\"{"            "[:nonascii:]")
              (concat "- \t.,:!?;'\")}\\["  "[:nonascii:]")
              " \t\r\n,\"'"
              "."
              1))
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
                         spacemacs-dark
                         spacemacs-light
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
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 10000

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
   ;; dotspacemacs-smart-closing-parenthesis 'C-q
   dotspacemacs-smart-closing-parenthesis nil

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
   dotspacemacs-frame-title-format "%b %f %p %m %z -- Perfectionism eats away our most precious resource, time"
   ;; dotspacemacs-frame-title-format "%a %t %I %S %U %b %f %F %s %p %P %m %n %z %Z"

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
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  ;; proxy
  (setq url-proxy-services '(("no_proxy" . "127.0.0.1")
                             ("http" . "127.0.0.1:8011")
                             ("https" . "127.0.0.1:8011")
                             ))
  )
(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
(defun org-clock-update-mode-line (&optional refresh)
    "Update mode line with clock information.
  When optional argument is non-nil, refresh cached heading."
    (if org-clock-effort
        (org-clock-notify-once-if-expired)
      (setq org-clock-task-overrun nil))
    (when refresh (setq org-clock-heading (org-clock--mode-line-heading)))
    (setq org-mode-line-string
    (propertize
    (let ((clock-string (org-clock-get-clock-string))
          (help-text "Org mode clock is running.\nmouse-1 shows a \
  menu\nmouse-2 will jump to task"))
      (if (and (> org-clock-string-limit 0)
          (> (length clock-string) org-clock-string-limit))
          (propertize
      (substring clock-string 0 org-clock-string-limit)
      'help-echo (concat help-text ": " org-clock-heading))
        (propertize clock-string 'help-echo help-text)))
    'local-map org-clock-mode-line-map
    'mouse-face 'mode-line-highlight))
    (if (and org-clock-task-overrun org-clock-task-overrun-text)
        (setq org-mode-line-string
        (concat (propertize
          org-clock-task-overrun-text
          'face 'org-mode-line-clock-overrun)
          org-mode-line-string)))
      (my-write-clock-in)
     
    (force-mode-line-update))
;; 这里添加好像没用，直接去源码里面添加了
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

  ;; (spacemacs/toggle-golden-ratio-on)
  (spacemacs/toggle-mode-line-off)
  (setq focus-dimness 30)
  (display-time-mode 1)
  ;;字体问题
  (cnfonts-enable)
  (cnfonts-set-spacemacs-fallback-fonts)
  (setq cnfonts-profiles-directory "~/.spacemacs.d/cnfonts/")

  ;; 更改spacemacs自带的字体快捷键
  (defun spacemacs/scale-up-font ()
    "zoom in frame, but keep the same pixel size"
    (interactive)
    (cnfonts-increase-fontsize))

  (defun spacemacs/scale-down-font ()
    "zoom out frame, but keep the same pixel size"
    (interactive)
    (cnfonts-decrease-fontsize))

  (defun spacemacs/reset-font-size ()
    "Unzoom current frame, keeping the same pixel size"
    (interactive)
    (cnfonts-switch-profile))


  ;;------------end----------------;;


;;;;;;;;;;;;;;
;;; Python ;;;
;;;;;;;;;;;;;;

  (add-hook 'python-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends) '(company-dabbrev company-diag)))) ;fixed complement
  ;; importmagic-mode 会导致变得卡顿，暂时禁用
  (remove-hook 'python-mode-hook 'importmagic-mode)
  (setq org-confirm-babel-evaluate nil)
  (setq python-indent-offset 2)
  (setq python-indent-guess-indent-offset-verbose nil)
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

  (defun org-my-custom-timestamp()
    (interactive)
    (insert (format-time-string "[%Y-%m-%d %H:%M]\n")))
  (add-hook 'org-mode-hook
            (lambda()
              (local-set-key "\C-c-" 'org-my-custom-timestamp)))
  (evil-leader/set-key "oy" 'youdao-dictionary-search-at-point+)
  (evil-leader/set-key "od" 'find-by-pinyin-dired)
  (evil-leader/set-key "od" 'server-edit)
  (evil-leader/set-key "ote" 'evil-org-mode)
  (evil-leader/set-key "otf" 'focus-mode)
  (evil-leader/set-key "ott" 'spaceline-toggle-org-clock)
  (evil-leader/set-key "otn" 'org-noter)
  (define-key evil-insert-state-map (kbd "C-s") 'helm-swoop)
  (define-key evil-normal-state-map (kbd "C-s") 'helm-swoop)
  (define-key evil-insert-state-map (kbd "C-v") 'org-yank)
  (define-key evil-insert-state-map (kbd "<C-M-return>") 'org-insert-subheading)
  (define-key evil-insert-state-map (kbd "C-a") 'mark-whole-buffer)
  (define-key evil-insert-state-map (kbd "C-b") 'spacemacs/org-bold)
  (define-key evil-insert-state-map (kbd "C-f") 'spacemacs/org-code)
  (define-key evil-insert-state-map (kbd "C-z") 'undo-tree-undo)
  (define-key evil-insert-state-map (kbd "C-d") 'org-time-stamp-inactive)
  (define-key evil-insert-state-map (kbd "C-c C-8") 'org-ctrl-c-star)
  (define-key evil-normal-state-map (kbd "C-1") 'org-noter)
  (define-key evil-normal-state-map (kbd "|") 'org-set-tags-command)
  (define-key evil-insert-state-map (kbd "C-1") 'org-noter)
  (global-set-key (kbd "M-b") 'spacemacs/helm-project-smart-do-search)
  ;; (define-key evil-insert-state-map (kbd "C-]") 'forward-char)
  (global-set-key (kbd "M-e") 'spacemacs/toggle-maximize-buffer)
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
    (add-hook 'evil-normal-state-exit-hook 'my-ahk-switch-chinese)
    )

  (defun my-iem-off()
    "nothing"
    (interactive)
    (remove-hook 'evil-normal-state-entry-hook 'my-ahk-switch-english)
    (remove-hook 'evil-normal-state-exit-hook 'my-ahk-switch-chinese)
    )
  ;; (my-ahk-switch-english)
  ;; (my-iem-on)
  ;; roam-edit
  (defun emacs-roamedit()
    ;; (w32-shell-execute "runas" "C:\\users\\xx299\\dropbox\\application_project\\Automatic_working\\Emacs-Roam\\taskupload.py")
    (shell-command "C:\\tools\\Anaconda3\\python.exe C:\\users\\xx299\\dropbox\\application_project\\Automatic_working\\Emacs-Roam\\taskupload.py")
    ;; (async-shell-command "C:\\tools\\Anaconda3\\python.exe C:\\users\\xx299\\dropbox\\application_project\\Automatic_working\\Emacs-Roam\\taskupload.py")
    )
  ;; (add-hook 'org-capture-after-finalize-hook 'emacs-roamedit)

  ;; agenda 下调用比较缓慢,这里暂时关闭了

  ;; (add-hook 'org-agenda-mode-hook 'my-iem-off)
  ;; (add-hook 'org-agenda-finalize-hook 'my-iem-on)
  ;; (remove-hook 'org-agenda-finalize-hook 'my-iem-off)

  (evil-leader/set-key "oti" 'my-iem-on)
  (evil-leader/set-key "otI" 'my-iem-off)

  (require 'spaceline-config)


;;;;;;;;;;;;;;
;;;Org-init;;;
;;;;;;;;;;;;;;




  ;;init-keyboard

  ;; (define-key evil-insert-state-map (kbd "C-S-left") 'org-yank)
  (setq org-tags-column 2)
  ;; (define-key org-agenda-keymap (kbd "v") 'org-agenda-view-mode-dispatch)
  (global-set-key (kbd "M-c") 'org-agenda)

  ;;org-mode 省略符
  (setq org-ellipsis "⤵")
  ;;未知
  (setq org-fontify-whole-heading-line t)
  ;; line-spacing
  (setq line-spacing 3)

  ;; 字数统计
  (defvar wc-regexp-chinese-char-and-punc
      (rx (category chinese)))
  (defvar wc-regexp-chinese-punc
    "[。，！？；：「」『』（）、【】《》〈〉※—]")
  (defvar wc-regexp-english-word
    "[a-zA-Z0-9-]+")

  (defun wc ()
    "「較精確地」統計中/日/英文字數。
- 文章中的註解不算在字數內。
- 平假名與片假名亦包含在「中日文字數」內，每個平/片假名都算單獨一個字（但片假
  名不含連音「ー」）。
- 英文只計算「單字數」，不含標點。
- 韓文不包含在內。

※計算標準太多種了，例如英文標點是否算入、以及可能有不太常用的標點符號沒算入等
。且中日文標點的計算標準要看 Emacs 如何定義特殊標點符號如ヴァランタン・アルカン
中間的點也被 Emacs 算為一個字而不是標點符號。"
  (interactive)
  (let* ((v-buffer-string
          (progn
            (if (eq major-mode 'org-mode) ; 去掉 org 文件的 OPTIONS（以#+開頭）
                (setq v-buffer-string (replace-regexp-in-string "^#\\+.+" ""
                                       (buffer-substring-no-properties (point-min) (point-max))))
              (setq v-buffer-string (buffer-substring-no-properties (point-min) (point-max))))
            (replace-regexp-in-string (format "^ *%s *.+" comment-start) "" v-buffer-string)))
                                        ; 把註解行刪掉（不把註解算進字數）。
         (chinese-char-and-punc 0)
         (chinese-punc 0)
         (english-word 0)
         (chinese-char 0))
    (with-temp-buffer
      (insert v-buffer-string)
      (goto-char (point-min))
      ;; 中文（含標點、片假名）
      (while (re-search-forward wc-regexp-chinese-char-and-punc nil :no-error)
        (setq chinese-char-and-punc (1+ chinese-char-and-punc)))
      ;; 中文標點符號
      (goto-char (point-min))
      (while (re-search-forward wc-regexp-chinese-punc nil :no-error)
        (setq chinese-punc (1+ chinese-punc)))
      ;; 英文字數（不含標點）
      (goto-char (point-min))
      (while (re-search-forward wc-regexp-english-word nil :no-error)
        (setq english-word (1+ english-word))))
    (setq chinese-char (- chinese-char-and-punc chinese-punc))
    (message
     (format "中日文字數（不含標點）：%s
中日文字數（包含標點）：%s
英文字數（不含標點）：%s
=======================
中英文合計（不含標點）：%s"
             chinese-char chinese-char-and-punc english-word
             (+ chinese-char english-word)))))


  ;;load el directory
  (add-to-list 'load-path "C:/Users/xx299/.spacemacs.d/elisp")
  ;; Auto-save
  ;; (require 'auto-save)
  ;; (setq auto-save-silent t)   ; quietly save
  ;; (setq auto-save-delete-trailing-whitespace t)  ; automatically delete spaces at the end of the line when saving
  ;; (require 'real-auto-save)
  ;; (add-hook 'org-mode-hook 'real-auto-save-mode)
  ;; (add-hook 'prog-mode-hook 'real-auto-save-mode)
  ;; (setq real-auto-save-interval 10)
  (defmacro with-suppressed-message (&rest body)
    "Suppress new messages temporarily in the echo area and the `*Messages*' buffer while BODY is evaluated."
    (declare (indent 0))
    (let ((message-log-max nil))
      `(with-temp-message (or (current-message) "") ,@body)))

  (with-suppressed-message (save-buffer))

  ;; (defmacro no-message (&rest body)
  ;;   "Eval BODY, with `message' doing nothing."
  ;;   `(cl-letf (((symbol-function 'message)
  ;;               (lambda (&rest args)
  ;;                 nil)))
  ;;      (progn ,@body)))

  ;; (no-message
  ;;  (message "meaningless")  ; do nothing
  ;;  (print [1 2 3])  ; not affected
  ;;  (save-buffer))  ; won't display messages in minibuffer


  ;; (evil-leader/set-key "ota" '(remove-hook org-mode-hook real-auto-save-mode))
  ;; (remove-hook 'org-mode-hook 'real-auto-save-mode)
  ;; Auto-save----end
  ;; emoji
  ;; (add-hook 'org-mode-hook 'emojify-mode)
  ;; (setq emojify-emojis-dir "c:/Users/xx299/.spacemacs.d/.cache/emojify/")
  ;;init jieba
  ;; (add-to-list 'load-path "C:/Users/xx299/.spacemacs.d/elisp")
  ;; (require 'jieba)
  ;; (jieba-mode)

  ;; hooks

  ;; (defun my-org-mode-hook ()
  ;;   (setq js2-basic-offset 2)
  ;;   (setq js-indent-level 2)
  ;;   (setq js2-include-node-externs t)
  ;;   (setq js2-strict-missing-semi-warning nil))
  ;; (add-hook 'js2-mode-hook 'my-js-mode-hook)
  ;;init-download
  (require 'org-download)
  (setq-default org-download-image-dir "~/Dropbox/org/pictures")
  (defun custom-org-download-method (link)
    (org-download--fullname (org-link-unescape link)))
  (setq org-download-method 'custom-org-download-method) ; 注意：这里不能用lambda表达式
  ;; 顺便改下annotate，就是自动插入的那行注释，里面写的是图片来源路径
  (setq org-download-annotate-function 'ignore)
  (setq org-download-annotate-function (lambda (_link) ""))
  ;; (setq org-download-annotate-function
  ;;       '(lambda (link)
  ;;         (org-download-annotate-default (org-link-unescape link))))
  (global-set-key (kbd "C-c y") 'org-download-yank)

  (setq org-download-screenshot-method "convert clipboard: %s")
  ;; (setq-default org-download-image-dir "./images")
  ;; set key binding for org-download-screenshot
  (global-set-key (kbd "C-S-y") 'org-download-screenshot)
  ;; 去除插入前空格
  (defun org-download-insert-link (link filename)
  (let* ((beg (point))
         (line-beg (line-beginning-position))
         (indent (- beg line-beg))
         (in-item-p (org-in-item-p))
         str)
    (if (looking-back "^[ \t]+" line-beg)
        (delete-region (match-beginning 0) (match-end 0))
      ;; (newline))
      (+ 1 1))
    (insert (funcall org-download-annotate-function link))
    ;; (insert "\n")
    (dolist (attr org-download-image-attr-list)
      (insert attr "\n"))
    (insert (if (= org-download-image-html-width 0)
                ""
              (format "#+attr_html: :width %dpx\n" org-download-image-html-width)))
    (insert (if (= org-download-image-latex-width 0)
                ""
              (format "#+attr_latex: :width %dcm\n" org-download-image-latex-width)))
    (insert (if (= org-download-image-org-width 0)
                ""
              (format "#+attr_org: :width %dpx\n" org-download-image-org-width)))
    (insert
     (format org-download-link-format
             (org-link-escape
              (funcall org-download-abbreviate-filename-function filename))))
    (org-download--display-inline-images)
    (setq str (buffer-substring-no-properties line-beg (point)))
    (when in-item-p
      (indent-region line-beg (point) indent))
    str))

  ;;clock init

;;   (defun org-clock-get-clocked-time ()
;;     "Get the clocked time for the current item in minutes.
;; The time returned includes the time spent on this task in
;; previous clocking intervals."
;;     (let ((currently-clocked-time
;; 	         (floor (org-time-convert-to-integer
;; 		               (org-time-since org-clock-start-time))
;; 		              60)))
;;       (+ currently-clocked-time (or org-clock-total-time 0))))
;;   (setq my-clock-time (org-duration-from-minutes (org-clock-get-clocked-time)))
  (defun my-write-clock-in()
    (let ((clock-string (concat
                         (org-duration-from-minutes (org-clock-get-clocked-time))
                         "&"
                         org-clock-heading

                         )))
      (write-region clock-string nil "C:\\software\\autohotkey\\emacs\\status.txt")))
  (defun my-write-clock-out()
    (let ((clock-string (concat
                         "00:00"
                         "&"
                         "当前无任务"

                         )))
      (write-region clock-string nil "C:\\software\\autohotkey\\emacs\\status.txt")))

  (add-hook 'org-clock-in-hook 'spaceline-toggle-org-clock-on)
  (add-hook 'org-clock-in-hook 'my-write-clock-in)
  (add-hook 'org-clock-out-hook 'my-write-clock-out)

  (defun org-timer-update-mode-line ()
    "Update the timer time in the mode line."
    (if org-timer-pause-time
        nil
      (setq org-timer-mode-line-string
	          (concat " <" (substring (org-timer-value-string) 0 -1) ">"))
      (force-mode-line-update))
    (my-write-clock-in)
    )
  (setq org-timer-value-string "00:00")

  (defun org-clock-update-mode-line (&optional refresh)
    "Update mode line with clock information.
  When optional argument is non-nil, refresh cached heading."
    (if org-clock-effort
        (org-clock-notify-once-if-expired)
      (setq org-clock-task-overrun nil))
    (when refresh (setq org-clock-heading (org-clock--mode-line-heading)))
    (setq org-mode-line-string
    (propertize
    (let ((clock-string (org-clock-get-clock-string))
          (help-text "Org mode clock is running.\nmouse-1 shows a \
  menu\nmouse-2 will jump to task"))
      (if (and (> org-clock-string-limit 0)
          (> (length clock-string) org-clock-string-limit))
          (propertize
      (substring clock-string 0 org-clock-string-limit)
      'help-echo (concat help-text ": " org-clock-heading))
        (propertize clock-string 'help-echo help-text)))
    'local-map org-clock-mode-line-map
    'mouse-face 'mode-line-highlight))
    (if (and org-clock-task-overrun org-clock-task-overrun-text)
        (setq org-mode-line-string
        (concat (propertize
          org-clock-task-overrun-text
          'face 'org-mode-line-clock-overrun)
          org-mode-line-string)))
      (my-write-clock-in)
    (force-mode-line-update))
;;--------------
  ;; Drag-and-drop to `dired`
  ;;init-autostartup

  ;; (add-hook 'org-mode-hook 'aggressive-indent-mode)
  (add-hook 'dired-mode-hook 'org-download-enable)
  ;; (add-hook 'org-mode-hook 'auto-fill-mode)
  (add-hook 'org-mode-hook 'smartparens-mode)
  (add-hook 'org-mode-hook 'org-indent-mode)
  ;; (add-hook 'org-mode-hook 'org-num-mode)
  (add-hook 'org-mode-hook 'spacemacs/toggle-truncate-lines-off)
  (add-hook 'org-mode-hook 'spacemacs/toggle-mode-line-minor-modes-off)
  (add-hook 'org-mode-hook 'spacemacs/toggle-mode-line-off)
  (add-hook 'org-agenda-mode-hook 'spacemacs/toggle-mode-line-off)

 ;; (smartparens-mode)
 ;; (org-indent-mode)
 ;; (spaceline-toggle-org-clock)
 ;; (spacemacs/toggle-mode-line-minor-modes)

  ;; auto added whitespace
  ;; SPC h SPC search pangu-spacing
  ;;init-clock
  ;;忽略时间为0的时间
  ;;https://emacs.stackexchange.com/questions/52048/drop-rows-with-zero-time-in-org-mode-agenda-clockreport
  (setq org-agenda-clockreport-parameter-plist '(:stepskip0 t :link t :maxlevel 4 :fileskip0 t))
  ;; (setq org-clock-in-switch-to-state "NEXT")
  ;; (setq org-clock-out-switch-to-state "DONE")
  ;; (add-hook 'org-after-todo-state-change-hook 'org-clock-in)
  ;; (add-hook 'org-after-todo-state-change-hook 'org-clock-out)


  ;; https://github.com/KingBing/blog-src/blob/e259933e9bc5f246fde50645f024731a16bb6bbc/blog/%E5%9C%A8%20org-mode%20%E4%B8%AD%E9%A1%AF%E7%A4%BA%E5%9C%96%E7%89%87.org
  (setq image-type-available-p 'imagemagick)
  (setq org-image-actual-width '(500))       ; Fallback to width 300

  (add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
  (with-eval-after-load 'org

    ;; 临时解决图片缩放问题

;; Copied from https://github.com/jkitchin/scimax/blob/master/scimax-org.el
;; * Rescaling inline-images
;; This will eventually be obsolete if this makes it into org-mode
(defvar org-inline-image-resize-function
  #'org-inline-image-resize
  "Function that takes a filename and resize argument and returns
 a new filename pointing to the resized image.")

(defun org-inline-image-resize (fname resize-options)
  "Resize FNAME with RESIZE-OPTIONS.
RESIZE-OPTIONS are passed to \"mogrify resized-fname -resize resize-options\".
RESIZE-OPTIONS could be:
N% to scale the image by a percentage.
N to set the width, keeping the aspect ratio constant.
xN to set the height, keeping the aspect ratio constant.
NxM! to set the width and height, ignoring the aspect ratio.
See http://www.imagemagick.org/Usage/resize/#resize for more options."
  (let* ((md5-hash (with-temp-buffer (insert-file-contents fname)
				     (insert (format "%s" resize-options))
				     (md5 (buffer-string))))
	 (resized-fname (concat (expand-file-name
				 md5-hash
				 temporary-file-directory)
				"."
				(file-name-extension fname)))
	 (cmd (format "mogrify -resize %s %s"
		      resize-options
		      resized-fname)))
    (if (not (executable-find "mogrify"))
	(progn
	  (message "No mogrify executable found. To eliminate this message, set  `org-inline-image-resize-function' to nil or install imagemagick from http://www.imagemagick.org/script/binary-releases.php")
	  fname)
      (unless (file-exists-p resized-fname)
	(copy-file fname resized-fname)
	(shell-command cmd))
      resized-fname)))

;; this is copied and modified from org.el
(defun org-display-inline-images (&optional include-linked refresh beg end)
  "Display inline images.
An inline image is a link which follows either of these
conventions:
  1. Its path is a file with an extension matching return value
     from `image-file-name-regexp' and it has no contents.
  2. Its description consists in a single link of the previous
     type.
When optional argument INCLUDE-LINKED is non-nil, also links with
a text description part will be inlined.  This can be nice for
a quick look at those images, but it does not reflect what
exported files will look like.
When optional argument REFRESH is non-nil, refresh existing
images between BEG and END.  This will create new image displays
only if necessary.  BEG and END default to the buffer
boundaries."
  (interactive "P")
  (when (display-graphic-p)
    (unless refresh
      (org-remove-inline-images)
      (when (fboundp 'clear-image-cache) (clear-image-cache)))
    (org-with-wide-buffer
     (goto-char (or beg (point-min)))
     (let ((case-fold-search t)
	   (file-extension-re (image-file-name-regexp)))
       (while (re-search-forward "[][]\\[\\(?:file\\|[./~]\\)" end t)
	 (let ((link (save-match-data (org-element-context))))
	   ;; Check if we're at an inline image.
	   (when (and (equal (org-element-property :type link) "file")
		      (or include-linked
			  (not (org-element-property :contents-begin link)))
		      (let ((parent (org-element-property :parent link)))
			(or (not (eq (org-element-type parent) 'link))
			    (not (cdr (org-element-contents parent)))))
		      (org-string-match-p file-extension-re
					  (org-element-property :path link)))
	     (let ((file (expand-file-name
			  (org-link-unescape
			   (org-element-property :path link)))))
	       (when (file-exists-p file)
		 (let ((width
			;; Apply `org-image-actual-width' specifications.
			(cond
			 ((and (not (image-type-available-p 'imagemagick))
			       (not org-inline-image-resize-function))
			  nil)
			 ((eq org-image-actual-width t) nil)
			 ((listp org-image-actual-width)
			  (or
			   ;; First try to find a width among
			   ;; attributes associated to the paragraph
			   ;; containing link.
			   (let* ((paragraph
				   (let ((e link))
				     (while (and (setq e (org-element-property
							  :parent e))
						 (not (eq (org-element-type e)
							  'paragraph))))
				     e))
				  (attr_org (org-element-property :attr_org paragraph)))
			     (when attr_org
			       (plist-get
				(org-export-read-attribute :attr_org  paragraph) :width)))
			   ;; Otherwise, fall-back to provided number.
			   (car org-image-actual-width)))
			 ((numberp org-image-actual-width)
			  org-image-actual-width)))
		       (old (get-char-property-and-overlay
			     (org-element-property :begin link)
			     'org-image-overlay)))
		   (if (and (car-safe old) refresh)
		       (image-refresh (overlay-get (cdr old) 'display))

		     (when (and width org-inline-image-resize-function)
		       (setq file (funcall  org-inline-image-resize-function file width)
			     width nil))
		     (let ((image (create-image file
						(cond
						 ((image-type-available-p 'imagemagick)
						  (and width 'imagemagick))
						 (t nil))
						nil
						:width width)))
		       (when image
			 (let* ((link
				 ;; If inline image is the description
				 ;; of another link, be sure to
				 ;; consider the latter as the one to
				 ;; apply the overlay on.
				 (let ((parent
					(org-element-property :parent link)))
				   (if (eq (org-element-type parent) 'link)
				       parent
				     link)))
				(ov (make-overlay
				     (org-element-property :begin link)
				     (progn
				       (goto-char
					(org-element-property :end link))
				       (skip-chars-backward " \t")
				       (point)))))
			   (overlay-put ov 'display image)
			   (overlay-put ov 'face 'default)
			   (overlay-put ov 'org-image-overlay t)
			   (overlay-put
			    ov 'modification-hooks
			    (list 'org-display-inline-remove-overlay))
(push ov org-inline-image-overlays)))))))))))))))

;; * Enable pdf and eps images in org-mode
;; Suggested on the org-mode maillist by Julian Burgos
;; (add-to-list 'image-file-name-extensions "pdf")
(add-to-list 'image-file-name-extensions "eps")

(add-to-list 'image-type-file-name-regexps '("\\.eps\\'" . imagemagick))
(add-to-list 'image-file-name-extensions "eps")
;; (add-to-list 'image-type-file-name-regexps '("\\.pdf\\'" . imagemagick))
;; (add-to-list 'image-file-name-extensions "pdf")

;; (setq imagemagick-types-inhibit (remove 'PDF imagemagick-types-inhibit))

;; 临时解决图片缩放问题END

    ;;init-org
    ;;init-freemind
    (require 'ox-freemind)
    (setq org-freemind-styles
      '((default . "<node>\n</node>")
        (0 . "<node COLOR=\"#000000\">\n<font NAME=\"SansSerif\" SIZE=\"20\"/>\n</node>")
        (1 . "<node COLOR=\"#0033ff\">\n<edge STYLE=\"sharp_bezier\" WIDTH=\"8\"/>\n<font NAME=\"SansSerif\" SIZE=\"18\"/>\n</node>")
        (2 . "<node COLOR=\"#00b439\">\n<edge STYLE=\"bezier\" WIDTH=\"thin\"/>\n<font NAME=\"SansSerif\" SIZE=\"16\"/>\n</node>")
        (3 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (4 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (5 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (6 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (7 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (8 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (9 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (10 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (11 . "<node COLOR=\"#990000\" FOLDED=\"true\">\n<font NAME=\"SansSerif\" SIZE=\"14\"/>\n</node>")
        (12 . "<node COLOR=\"#111111\">\n</node>")))
    (setq org-hide-emphasis-markers nil)
    (setq org-cycle-separator-lines 2)
    (setq spacemacs-space-doc-modificators
          '(center-buffer-mode
            org-indent-mode
            view-mode
            hide-line-numbers
            alternative-emphasis
            alternative-tags-look
            link-protocol
            org-block-line-face-remap
            org-bl-face-remap
            org-kbd-face-remap
            resize-inline-images))
    ;; writeroom
    (with-eval-after-load 'writeroom-mode
      (define-key writeroom-mode-map (kbd "C-M-<") #'writeroom-decrease-width)
      (define-key writeroom-mode-map (kbd "C-M->") #'writeroom-increase-width)
      (define-key writeroom-mode-map (kbd "C-M-=") #'writeroom-adjust-width))
    ;; template使模板生效
    (require 'org-tempo)
    ;; (setq org-ellipsis " ▼")
    ;; (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))

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
    ;;init-org-super-agenda
    (setq org-super-agenda-groups
          '(

            (:name "Will"
                   :tag "Will"
                   ;; :priority "A"
                   :order 5
                   )

            (:name "COUNTDOWN"
                   :tag "COUNTDOWN"
                   ;; :priority "A"
                   :order 4
                   )

            (:name "Now"
                   :tag "Now"
                   ;; :priority "A"
                   :order 7
                   )

            (:name "小朋友"
                   :tag "Love"
                   ;; :priority "A"
                   :order 7
                   )


            (:name "COURSE&WORK"
                   :tag "COURSE"
                   :tag "WORKROUTINE"
                   ;; :priority "A"
                   :order 10
                   )

            (:name "ENGLISH"
                    :tag "ENGLISH"
                    ;; :priority "A"
                    :order 10
                    )

            (:name "MATH"
                   :tag "MATH"
                   ;; :priority "A"
                   :order 10
                   )
            (:name "Life"
                   :tag "Life"
                   ;; :priority "A"
                   :order 100
                   )

            (:name "BOOK"
                    :tag "BOOK"
                    :order 90)

            (:name "Thought & HABIT"
                   :tag "Thought"
                   :tag "Journals"
                   :tag "HABIT"
                   ;; :priority "A"
                   :order 80
                   )

            (:name "HEALTH"
                   :tag "HEALTH"
                   :order 79)

            (:name "鸡汤"
                   :tag "鸡汤"
                   :order 99)

            (:name "Work"
                   :tag "Work"
                   :tag "work"
                   :order 96)
            (:name "Entertainment"
                   :tag "entertainment"
                   :order 95)

            (:name "Due Today"
                   :deadline today
                   :scheduled today
                   :order 2)

            (:name "Due Soon"
                    :deadline future
                    )

            (:name "Overdue"
                   :deadline past
                   :scheduled past
                   )
            )
          )
                                      ;(setq org-agenda nil "a")
    (org-super-agenda-mode t)
    ;;init-agenda
    (define-key org-agenda-keymap (kbd "C-s") 'helm-swoop)
    (setq org-agenda-use-time-grid nil)
    ;; 农历生日
    ;; https://emacs-china.org/t/topic/2119/19?u=elliott
    (require 'cal-china-x)
    (setq mark-holidays-in-calendar t)
    (setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
    (setq cal-china-x-general-holidays '((holiday-lunar 1 15 "元宵节")))
    ;; (setq other-holidays ')
    (setq calendar-holidays
          (append cal-china-x-important-holidays
                  cal-china-x-general-holidays
                  ;; other-holidays
                  ))

    (defun my--diarY-chinese-anniversary (lunar-month lunar-day &optional year mark)
      (if year
          (let* ((d-date (diary-make-date lunar-month lunar-day year))
                 (a-date (calendar-absolute-from-gregorian d-date))
                 (c-date (calendar-chinese-from-absolute a-date))
                 (cycle (car c-date))
                 (yy (cadr c-date))
                 (y (+ (* 100 cycle) yy)))
            (diary-chinese-anniversary lunar-month lunar-day y mark))
        (diary-chinese-anniversary lunar-month lunar-day year mark)))

    (setq org-agenda-span 'day)
    (setq diary-file "~/.spacemacs.d/diary")
    (setq org-deadline-warning-days 0)  ; 设置默认警告时间。
    (setq org-agenda-include-diary t)
    (setq org-capture-templates nil)
    ;;capture-map
    (global-set-key (kbd "M-v") 'org-capture)
    ;;init-capture
    ;; (add-to-list 'org-capture-templates '("t" "Tasks"))
    ;; (add-to-list 'org-capture-templates
    ;;              '("ta" "A" entry
    ;;                (file "~/Dropbox/org/GTD/task.org")
    ;;                "* TODO [#A] %^{Project} %^G \nDEADLINE: %^t\n%?" :clock-in t :clock-resume t))
    (setq org-capture-templates
          '(
            ("i" "Inbox" entry
             (file "~/Dropbox/org/GTD/inbox.org")
             "* TODO %^{1.Actionable?\t2.Less then 2 min?} :nil: \nDEADLINE: %t\n---\n%?\n---\n" :clock-in t :clock-resume t)
            ("v" "Inbox" entry
              (file "~/Dropbox/org/GTD/inbox.org")
              "* TODO %^{1.Actionable?\t2.Less then 2 min?} :nil: \nDEADLINE: %t\n---\n%?\n---\n" :clock-in t :clock-resume t)
            ("c" "learning" entry
              (file "~/Dropbox/org/GTD/learning.org")
              "* TODO %^{1.Actionable?\t2.Less then 2 min?} :learning: \nDEADLINE: %t\n---\n%?\n---\n" :clock-in t :clock-resume t)
            ("w" "work" entry
              (file "~/Dropbox/org/GTD/work.org")
              "* TODO %^{1.Actionable?\t2.Less then 2 min?} :work: \nDEADLINE: %t\n---\n%?\n---\n" :clock-in t :clock-resume t)
            ("l" "life" entry
              (file "~/Dropbox/org/GTD/life.org")
              "* TODO %^{1.Actionable?\t2.Less then 2 min?} :life: \nDEADLINE: %t\n---\n%?\n---\n" :clock-in t :clock-resume t)
            ("d" "Countdown" entry
              (file "~/Dropbox/org/GTD/inbox.org")
              "* TODO %a  :countdown: \n\%\%%? (diary-remind '(diary-date %^{Month}\s%^{Day} 2021 t) -9999)Done this task:%a\n--- nil ---" :clock-in t :clock-resume t)
            ("g" "GTD" entry
              (file+headline "~/Dropbox/org/GTD/life.org" "GTD")
              "* TODO %^{What do you have any question?} :GTD:\n---\n%?\n---\n" :clock-in t :clock-resume t)

            ("m" "Movie" entry
             (file+headline "~/Dropbox/org/GTD/life.org" "Movie")
             "* TODO %^{What do you have any question?} :movie:\n---\n%?\n---\n" :clock-in t :clock-resume t)

            ("b" "Book" entry
             (file+headline "~/Dropbox/org/GTD/life.org" "Book")
             "* TODO %^{What do you have any question?} :book:\n---\n%?\n---\n" :clock-in t :clock-resume t)
            ;; ---------- ;;
            ("r" "Repeat")
            ("re" "English" entry
             (file+headline "~/Dropbox/org/GTD/learning.org" "重复")
             "* TODO %^{What do you want to repeat?} :english:word: \nDEADLINE: %^t\n%t\n---\n%?\n---\n" :clock-in t :clock-resume t :unnarrowed t)
            ("rp" "thought" entry
             (file+headline "~/Dropbox/org/GTD/common.org" "Thought")
             "* TODO %^{What do you want to repeat?} :thought: \nDEADLINE: %^t\n%t\n---\n%?\n---\n" :clock-in t :clock-resume t :unnarrowed t)
            ;; ---------- ;;

              ))

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

    (setq org-agenda-files
          (append (file-expand-wildcards "~/Dropbox/org/GTD/*.org")
                  ))

    ;; Delete unwanted files
    (setq org-agenda-exclude-agenda-files '(
                                            ;; "~/Dropbox/org/GTD/work.org"
                                            ;; "~/Dropbox/org/GTD/life.org"
                                            "~/Dropbox/org/GTD/archive.org"
                                            "~/Dropbox/org/GTD/My_Gril_hh.org"
                                            "~/Dropbox/org/GTD/My_Gril_pnh.org"
                                            "~/Dropbox/org/GTD/My_Gril_zjj.org"
                                            ))
    ;init custom-commands
    (setq org-agenda-custom-commands
          '(
            ;; ---------------------------;;
            ("c" . "day items")

            ("ca" "all"
             ((agenda "" (
                          (org-agenda-overriding-header "All achievable task")
                          (org-agenda-span 1)
                          (org-agenda-files '(
                                              "~/Dropbox/org/GTD/learning.org"
                                              "~/Dropbox/org/GTD/work.org"
                                              "~/Dropbox/org/GTD/life.org"
                                              "~/Dropbox/org/GTD/common.org"
                                              ))
                          ))))


            ("cc" "learning"
             ((agenda "" (
                          (org-agenda-overriding-header "learning")
                          (org-agenda-span 1)
                          (org-agenda-files '(
                                              "~/Dropbox/org/GTD/learning.org"
                                              "~/Dropbox/org/GTD/common.org"
                                              ))
                          ))))

            ("cw" "Work"
              ((agenda "" (
                          (org-agenda-overriding-header "Work")
                          (org-agenda-span 1)
                          (org-agenda-files '(
                                              "~/Dropbox/org/GTD/work.org"
                                              "~/Dropbox/org/GTD/common.org"
                                              ))
                          )
                      )
              )
              )

            ("cl" "Life"
             ((agenda "" (
                          (org-agenda-overriding-header "Life")
                          (org-agenda-span 1)
                          (org-agenda-files '(
                                              "~/Dropbox/org/GTD/life.org"
                                              "~/Dropbox/org/GTD/common.org"
                                              ))
                          ))))

            ("ci" "Inbox"
             ((agenda "" (
                          (org-agenda-overriding-header "Inbox")
                          (org-agenda-span 1)
                          (org-agenda-files '(
                                              "~/Dropbox/org/GTD/inbox.org"
                                              "~/Dropbox/org/GTD/common.org"
                                              ))
                          ))))
            ;; ---------------------------;;
            ;; ---------------------------;;
            ("t" . "todo")
            ("tt" "all todo"
             ((todo "" (
                          (org-agenda-overriding-header "All can be done")
                          (org-agenda-span 1)
                          (org-agenda-files '(
                                              "~/Dropbox/org/GTD/My_Gril.org"
                                              "~/Dropbox/org/GTD/life.org"
                                              "~/Dropbox/org/GTD/learning.org" 
                                              "~/Dropbox/org/GTD/work.org"
                                              "~/Dropbox/org/GTD/common.org"
                                              ))
                          ))))
            ("tc" "learning"
             ((todo "" (
                             (org-agenda-overriding-header "Life TODO")
                             (org-agenda-span 1)
                             (org-agenda-files '(
                                                 "~/Dropbox/org/GTD/learning.org" 
                                                 ))
                             ))))
            ("tw" "work"
             ((todo "" (
                             (org-agenda-overriding-header "Work TODO")
                             (org-agenda-span 1)
                             (org-agenda-files '(
                                                 "~/Dropbox/org/GTD/work.org"
                                                 ))
                             ))))
            ("tl" "life"
             ((todo "" (
                             (org-agenda-overriding-header "Life TODO")
                             (org-agenda-span 1)
                             (org-agenda-files '(
                                                 "~/Dropbox/org/GTD/My_Gril.org"
                                                 "~/Dropbox/org/GTD/life.org"
                                                 ))
                             ))))
            ("ti" "Inbox"
             ((todo "" (
                        (org-agenda-overriding-header "Inbox TODO")
                        (org-agenda-span 1)
                        (org-agenda-files '(
                                            "~/Dropbox/org/GTD/inbox.org"
                                            ))
                        ))))
            ("ta" "Any"
             ((todo "" (
                             (org-agenda-overriding-header "Any")
                             (org-agenda-span 1)
                             ))))
            ;; ---------------------------;;
            ("r" "Daily Agenda Review"
              ((agenda "" (
                          (org-agenda-overriding-header "今日记录")
                          (org-agenda-span 'day)
                          (org-agenda-show-log 'clockcheck)
                          (org-agenda-start-with-log-mode nil)
                          (org-agenda-log-mode-items '(closed clock))
                          (org-agenda-clockreport-mode t)
                          )))
              )

          ))
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


    (setq org-todo-keywords
          ;; '((sequence "TODO(t!)" "NEXT(n!)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
            '((sequence "TODO(t)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d)" "ABORT(a)")
          ;; '((sequence "TODO(t)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d)" "ABORT(a)")
            ))
    ;; 设置TODO完成状态改变抽屉
    (setq org-log-into-drawer "LOGBOOK")

    ;; 配置归档文件的名称和 Headline 格式

    (setq org-archive-location "~/Dropbox/org/GTD/archive.org::datetree/")

    ;; (defun org-archive-save-buffer ()
    ;;   (let ((afile (org-extract-archive-file (org-get-local-archive-location))))
    ;;     (if (file-exists-p afile)
    ;;         (let ((buffer (find-file-noselect afile)))
    ;;           (if (y-or-n-p (format "Save (%s)" buffer))
    ;;               (with-current-buffer buffer
    ;;                 (save-buffer))
    ;;             (message "You expressly chose _not_ to save (%s)" buffer)))
    ;;       (message "Ooops ... (%s) does not exist." afile))))
    ;; (add-hook 'org-archive-hook 'org-archive-save-buffer)

    ;; (loop for i in org-agenda-exclude-agenda-files do
    ;;       (delete i org-agenda-files))

;;;;;;;;;;;;;;
    ;; Org-Latex;;
;;;;;;;;;;;;;;

    (setq org-preview-latex-default-process 'dvipng)
    ;; (setq org-preview-latex-default-process 'imagemagick)
    (setq org-preview-latex-process-alist
          '(
            (dvipng
             :programs ("latex" "dvipng")
             :description "dvi > png"
             :message "you need to install programs: latex, dvipng and ghostscript."
             :image-input-type "dvi"
             :image-output-type "png"
             :image-size-adjust (1.0 . 1.0)
             :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
             :image-converter ("dvipng -fg %F -bg %B -D %D -T tight -o %O %f"))
            (dvisvgm :programs
                     ("xelatex" "dvisvgm" "convert")
                     :description "xdv > svg"
                     :message "you need to install the programs: xelatex and dvisvgm."
                     :use-xcolor t
                     :image-input-type "xdv"
                     :image-output-type "svg"
                     ;; :image-output-type "png"
                     :imfage-size-adjust (1.7 . 1.5)
                     ;; :latex-header
                     ;; "\\usepackage[UTF8]{ctex}"
                     :latex-compiler
                     ("xelatex -no-pdf -interaction nonstopmode -output-directory %o %f")
                     :image-converter
                     ("dvisvgm %f -n -b min -c %S -o %O"))
            (imagemagick :programs
                         ("xelatex" "convert")
                         :description "pdf > png"
                         :message "you need to install the programs: xelatex and imagemagick."
                         :use-xcolor t
                         :image-input-type "pdf"
                         :image-output-type "png"
                         :image-size-adjust (1.0 . 1.0)
                         :latex-compiler
                         ("xelatex -interaction nonstopmode -output-directory %o %f")
                         :image-converter
                         ("convert -density %D -trim -antialias %f -quality 100 %O"))))

    ;; 安装 XeLaTeX 是另外一个故事了..
    (require 'ox-latex)
    (setq Tex-command-default "XeLaTeX")
    ;; (setq org-latex-compiler "xelatex")


    ;;前面的东西必要动
    ;;org-mode export to latex
    (setq org-export-latex-listings t)

    ;;org-mode source code setup in exporting to latex
    (add-to-list 'org-latex-listings '("" "listings"))
    (add-to-list 'org-latex-listings '("" "color"))

    (add-to-list 'org-latex-packages-alist
                 '("" "xcolor" t))
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
                 '("fontset=macnew,UTF8" "ctex" t))
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
                 '("book"
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
                 '("beamer"
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

  ;; (with-eval-after-load 'org-agenda
  ;;   (require 'org-projectile)
  ;;   (mapcar '(lambda (file)
  ;;              (when (file-exists-p file)
  ;;                (push file org-agenda-files)))
  ;;           (org-projectile-todo-files)))

  ;;------------end----------------;;




;;;;;;;;;;;;;;
  ;;  Ox-Org  ;;
;;;;;;;;;;;;;;
  (with-eval-after-load 'ox
    (require 'ox-hugo))
  ;; (require 'ox-hugo-auto-export)
  ;;deft

  (setq deft-extensions '("txt" "tex" "org" "md" "Rmd"))
  (setq deft-directory "~/Dropbox/org/Notes")
  (setq deft-recursive t)
  (setq deft-file-naming-rules '((noslash . "_")))
  (setq deft-text-mode 'org-mode)
  (setq deft-use-filter-string-for-filename t)
  (setq deft-org-mode-title-prefix t)
  (setq deft-use-filename-as-title nil)
  (setq deft-default-extension "org")
  (setq deft-strip-summary-regexp
        (concat "\\("
                "[\n\t]"                    ;; blank
                "\\|^#\\+[[:upper:]_]+:.*$" ;; org-mode metadata
                "\\|^#\\+[[:alnum:]_]+:.*$" ;; org-mode metadata
                "\\|^#\s#\\+?.*$" ;; org-mode metadata
                "\\)"))
  (global-set-key [C-f8] 'ironman-deft-search-for)
  (global-set-key [f8] 'deft)
  ;; (setq deft-strip-title-regexp "")
  (defun ironman-deft-search-for(filter)
    (interactive "MFilter: ")
    (spacemacs/deft)
    (deft-filter filter t)
    )

  (require 'auto-save)
  (auto-save-enable)

  (setq auto-save-silent t)   ; quietly save
  (setq auto-save-delete-trailing-whitespace nil)  ; automatically delete spaces at the end of the line when saving

;;; custom predicates if you don't want auto save.
;;; disable auto save mode when current filetype is an gpg file.
  (setq auto-save-disable-predicates
        '((lambda ()
            (string-suffix-p
             "gpg"
             (file-name-extension (buffer-name)) t))))

  ;; 功能重复，real-auto-save 就可以了
  ;; (add-hook 'org-mode-hook 'auto-save-mode)
  ;; ;; (remove-hook 'org-mode-hook 'real-auto-save-mode)
  ;; (setq auto-save-interval 10)
  ;; (setq auto-save-timeout 30)


  ;; (setq deft-auto-save-interval 10)
  ;;------------end----------------;;



;;;;;;;;;;;;;;
;init-bookmarks ;
;;;;;;;;;;;;;;
  (setq bookmark-default-file "~/.spacemacs.d/other_file/bookmarks")
  (defadvice bookmark-jump (after bookmark-jump activate)
    (let ((latest (bookmark-get-bookmark bookmark)))
      (setq bookmark-alist (delq latest bookmark-alist))
      (add-to-list 'bookmark-alist latest)))
  (setq bookmark-sort-flag t)
  (evil-leader/set-key "ob" 'bookmark-set)
  (global-set-key (kbd "M-x") 'helm-filtered-bookmarks)
  (global-set-key (kbd "M-r") 'evil-window-next)
  ;;------------end----------------;;
  ;;init-pdf
  (require 'pdf-tools-extension)
  (require 'pdf-cache)
  (require 'pdf-outline)
  (require 'org-noter)
  ;; 显示当前页数
  (define-pdf-cache-function pagelabels)
  (defun pdf-view-page-number ()
    (interactive)
    (message " [%s/%s/%s]"
             (nth (1- (pdf-view-current-page))
                  (pdf-cache-pagelabels))
             (number-to-string (pdf-view-current-page))
             (number-to-string (pdf-cache-number-of-pages))))

  (setq pdf-info-epdfinfo-program '"c:/users/xx299/.spacemacs.d/pdf-tools-20191128.1731/epdfinfo.exe")
  (add-hook 'pdf-view-mode-hook 'pdf-tools-enable-minor-modes)
  ;; (add-hook 'pdf-view-mode-hook '(spacemacs/enlarge-window-horizontally 22))
  (setq org-noter-notes-search-path '("c:/Users/xx299/Dropbox/org/Notes"))
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
  ;; 按键
  (define-key org-noter-notes-mode-map (kbd "M-n") 'org-noter-sync-next-note)
  (define-key org-noter-notes-mode-map (kbd "M-p") 'org-noter-sync-prev-note)

  (define-key pdf-view-mode-map (kbd "e") 'pdf-view-scroll-down-or-previous-page)
  (define-key pdf-view-mode-map (kbd "c") 'pdf-view-page-number)
  (define-key pdf-view-mode-map (kbd "t") 'spacemacs/toggle-mode-line)
  (define-key pdf-outline-buffer-mode-map (kbd "C-s") 'helm-swoop)
  ;;init-epub
  ;; epub 打不开问题
  (require 'nov)
  (with-eval-after-load "nov"
    (when (string-equal system-type "windows-nt")
      (setq process-coding-system-alist
            (cons `(,nov-unzip-program . (gbk . gbk))
                  process-coding-system-alist))))

  (define-key nov-mode-map (kbd "e") 'nov-scroll-down)

  ;;init helm
  (add-to-list 'load-path "c:/Users/xx299/.spacemacs.d/elisp/iswitchb-pinyin/")
  (require 'iswitchb-pinyin)
  ;; 支持中文拼音首字母匹配，会使helm-find-files匹配过多。
  (cl-defun helm-mm-3-match/around (orig-fn str &rest args)
    (apply orig-fn (concat str "|" (str-unicode-to-pinyin-initial str)) args))
  (advice-add 'helm-mm-3-match :around #'helm-mm-3-match/around)
  ;; 默认在输入前面加空格解决匹配问题。
  (defun helm-find-files-1/around (orig-fn fname &rest args)
    (apply orig-fn (concat fname " ") args))
  (advice-add 'helm-find-files-1 :around #'helm-find-files-1/around)


  ;;auto startup
  (defun tdh/eval-startblock ()
    (if (member "startblock" (org-babel-src-block-names))
        (save-excursion
          (org-babel-goto-named-src-block "startblock")
          (org-babel-execute-src-block))
      nil
      )
    )
  (add-hook 'org-mode-hook 'tdh/eval-startblock)

;;;;;;;;;;;;;;
;;;  other ;;;
;;;;;;;;;;;;;;



  ;; (setq projectile-git-submodule-command nil) ;; 速度Git速度慢的问题
  (setq large-file-warning-threshold nil)
  (setq treemacs-filewatch-mode t)      ;
  (setq treemacs-file-event-delay 1000)
  (setq treemacs-use-collapsed-directories 3)
  ;; block the ".#" file generate https://www.gnu.org/software/emacs/manual/html_node/emacs/Interlocking.html#Interlocking
  (setq create-lockfiles nil)
  (server-start)
  ;;init-fcitx
  ;; (let ((fcitx-path "C:\\software\\bat\\bcn"))
  ;;   (setenv "PATH" (concat fcitx-path ";" (getenv "PATH")))
  ;;   (add-to-list 'exec-path fcitx-path))
  ;; (fcitx-prefix-keys-turn-off)
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

  ;; (add-to-list `yas-snippet-dirs
  ;;              "~/.spacemacs.d/snippets" ;; personal snippets
  ;;              ;; "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
  ;;              ;; "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
  ;;              )

  ;; (yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.

  ;; 编码问题

  (when (eq system-type 'windows-nt)
    (setq locale-coding-system 'gb18030)  ;此句保证中文字体设置有效
    (setq w32-unicode-filenames 'nil)       ; 确保file-name-coding-system变量的设置不会无效
    (setq file-name-coding-system 'gb18030) ; 设置文件名的编码为gb18030
    )

  (setq-default message-draft-coding-system 'utf-8)

  (set-language-environment 'utf-8)


  ;; (setq-default nnheader-pathname-coding-system 'gbk)
  ;; (setq-default nnmail-pathname-coding-system 'gbk)
  ;; set coding config, last is highest priority.
  ;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Recognize-Coding.html#Recognize-Coding
  (prefer-coding-system 'cp950)
  (prefer-coding-system 'gb2312)
  (prefer-coding-system 'cp936)
  (prefer-coding-system 'gb18030)
  (prefer-coding-system 'utf-16)
  (prefer-coding-system 'utf-8-dos)
  (prefer-coding-system 'utf-8-unix)
  ;; (set-language-environment 'Chinese-GB18030)



  ;;init-help
  (define-key help-mode-map (kbd "u") 'evil-scroll-up)
  (define-key help-mode-map (kbd "d") 'evil-scroll-down)
  (define-key help-mode-map (kbd "C-s") 'helm-swoop)


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
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-term-color-vector
   [unspecified "#14191f" "#d15120" "#81af34" "#deae3e" "#7e9fc9" "#a878b5" "#7e9fc9" "#dcdddd"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes '(spacemacs-dark))
 '(custom-safe-themes
   '("a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "ab2cbf30ab758c5e936b527377d543ce4927001742f79519b62c45ba9dd9f55e" "66f32da4e185defe7127e0dc8b779af99c00b60c751b0662276acaea985e2721" "e11880d349e5b3f3d47e5bd6f7d9ff773ab6301e124ec7dbbbfbba5fb8482390" "9c27124b3a653d43b3ffa088cd092c34f3f82296cf0d5d4f719c0c0817e1afa6" "89536596ee5bdc5ef9ea3d3d5b515ea616285fa9274c836263024f1993f6b3dd" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "341b2570a9bbfc1817074e3fad96a7eff06a75d8e2362c76a2c348d0e0877f31" "8a97050c9dd0af1cd8c3290b061f4b6032ccf2044ddc4d3c2c39e516239b2463" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "8dce5b23232d0a490f16d62112d3abff6babeef86ae3853241a85856f9b0a6e7" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" default))
 '(diary-entry-marker 'font-lock-variable-name-face)
 '(emms-mode-line-icon-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *note[] = {
/* width height num_colors chars_per_pixel */
\"    10   11        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"###...####\",
\"###.#...##\",
\"###.###...\",
\"###.#####.\",
\"###.#####.\",
\"#...#####.\",
\"....#####.\",
\"#..######.\",
\"#######...\",
\"######....\",
\"#######..#\" };"))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-character-color "#192028")
 '(fci-rule-color "#56697A")
 '(gnus-logo-colors '("#2fdbde" "#c0c0c0") t)
 '(gnus-mode-line-image-cache
   '(image :type xpm :ascent center :data "/* XPM */
static char *gnus-pointer[] = {
/* width height num_colors chars_per_pixel */
\"    18    13        2            1\",
/* colors */
\". c #1fb3b3\",
\"# c None s None\",
/* pixels */
\"##################\",
\"######..##..######\",
\"#####........#####\",
\"#.##.##..##...####\",
\"#...####.###...##.\",
\"#..###.######.....\",
\"#####.########...#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###....####.######\",
\"###..######.######\",
\"###########.######\" };") t)
 '(helm-source-names-using-follow nil)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#D95468")
 '(org-agenda-files
   '("~/Dropbox/org/GTD/common.org" "~/Dropbox/org/GTD/My_Gril.org" "~/Dropbox/org/GTD/inbox.org" "~/Dropbox/org/GTD/archive.org" "~/Dropbox/org/GTD/learning.org" "~/Dropbox/org/GTD/life.org" "~/Dropbox/org/GTD/work.org"))
 '(org-deadline-warning-days 0)
 '(package-selected-packages
   '(org-ql peg ov org-wild-notifier org-noter toml-mode racer flycheck-rust dap-mode bui tree-mode lsp-mode cargo org-ref key-chord helm-bibtex parsebib biblio biblio-core tern nodejs-repl livid-mode skewer-mode js2-refactor multiple-cursors js2-mode js-doc import-js grizzl add-node-modules-path emojify emoji-cheat-sheet-plus company-emoji powershell helm-gtags helm helm-core ggtags counsel-gtags rust-mode wgrep smex ivy-xref ivy-purpose ivy-hydra counsel-projectile counsel-css counsel swiper ivy pdf-tools tablist ox-gfm org-re-reveal youdao-dictionary yapfify ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package treemacs-projectile treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons smeargle restart-emacs ranger rainbow-delimiters pytest pyim pyenv-mode py-isort popwin pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox pangu-spacing pandoc-mode ox-pandoc ox-hugo ox-epub overseer orgit org-sticky-header org-projectile org-present org-pomodoro org-mime org-journal org-download org-cliplink org-bullets org-brain open-junk-file nameless move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum live-py-mode link-hint indent-guide importmagic hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ag google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md font-lock+ focus flycheck-package flx-ido find-by-pinyin-dired fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish devdocs define-word cython-mode column-enforce-mode cnfonts clean-aindent-mode chinese-conv centered-cursor-mode blacken auto-highlight-symbol auto-compile auctex-latexmk anaconda-mode aggressive-indent ace-pinyin ace-link ace-jump-helm-line))
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(vc-annotate-background "#1D252C")
 '(vc-annotate-color-map
   (list
    (cons 20 "#8BD49C")
    (cons 40 "#abcd93")
    (cons 60 "#cbc68b")
    (cons 80 "#EBBF83")
    (cons 100 "#e5ae6f")
    (cons 120 "#df9e5b")
    (cons 140 "#D98E48")
    (cons 160 "#dc885f")
    (cons 180 "#df8376")
    (cons 200 "#E27E8D")
    (cons 220 "#df7080")
    (cons 240 "#dc6274")
    (cons 260 "#D95468")
    (cons 280 "#b05062")
    (cons 300 "#884c5c")
    (cons 320 "#604856")
    (cons 340 "#56697A")
    (cons 360 "#56697A")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
