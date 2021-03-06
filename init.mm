<map version="0.9.0">

<node COLOR="#000000">
<font NAME="SansSerif" SIZE="20"/>
<richcontent TYPE="NODE">
<html>
<head>
</head>
<body>
<p>
</p>
</body>
</html>
</richcontent>
<richcontent TYPE="NOTE">
<html>
<head>
</head>
<body>
<p>
;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
</p>

<p>
(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; base distribution to use. this is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
</p>

<p>
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
</p>

<p>
;; If non-nil then Spacemacs will ask for confirmation before installing
;; a layer lazily. (default t)
dotspacemacs-ask-for-lazy-installation t
</p>

<p>
;; If non-nil layers with lazy install support are lazy installed.
;; List of additional paths where to look for configuration layers.
;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
dotspacemacs-configuration-layer-path '()
</p>

<p>
;; List of configuration layers to load.
dotspacemacs-configuration-layers
'(rust
  javascript
  autohotkey
  windows-scripts
  ;; rust
  html
  ;; -----------------------------------------------------------&#x2013;&#x2014;
  ;; Example of useful layers you may want to use right away.
  ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
  ;; `M-m f e R' (Emacs style) to install them.
  ;; -----------------------------------------------------------&#x2013;&#x2014;
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
  pandoc
  ;; ranger 浏览文件必备
  ranger
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
  (python :variab
          python-test-runner 'pytest
          python-save-before-test nil
          python-backend 'anaconda)
  (ess :variables
       ess-enable-smart-equals t)
  (chinese :variables
           ;; chinese-enable-fcitx t
           chinese-enable-youdao-dict t
</p>

<p>
           ;; chinese-enable-avy-pinyin nil
           )
  (org :variables
       org-projectile-file "TODOs.org"
       org-support-shift-select t
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
                                   anki-editor
                                   real-auto-save
                                   ;; jieba
                                   ;; easy-hugo
                                   ;; 农历
                                   cal-china-x
                                   org-noter
                                   org-super-agenda
                                   )
</p>

<p>
;; A list of packages that cannot be updated.
dotspacemacs-frozen-packages '()
</p>

<p>
;; A list of packages that will not be installed and loaded.
dotspacemacs-excluded-packages '(
                                 pangu-spacing
                                 )
</p>

<p>
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs <b>all</b> packages supported by Spacemacs and never uninstalls them.
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
</p>

<p>
;; Name of executable file pointing to emacs 27+. This executable must be
;; in your PATH.
;; (default "emacs")
dotspacemacs-emacs-pdumper-executable-file "emacs"
</p>

<p>
;; Name of the Spacemacs dump file. This is the file will be created by the
;; portable dumper in the cache directory under dumps sub-directory.
;; To load it when starting Emacs add the parameter `&#x2013;dump-file'
;; when invoking Emacs 27.1 executable on the command line, for instance:
;;   ./emacs &#x2013;dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
;; (default spacemacs.pdmp)
dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"
</p>

<p>
;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
;; possible. Set it to nil if you have no way to use HTTPS in your
;; environment, otherwise it is strongly recommended to let it set to t.
;; This variable has no effect if Emacs is launched with the parameter
;; `&#x2013;insecure' which forces the value of this variable to nil.
;; (default t)
dotspacemacs-elpa-https nil
</p>

<p>
;; Maximum allowed time in seconds to contact an ELPA repository.
;; (default 5)
dotspacemacs-elpa-timeout 5
</p>


<p>
;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
;; This is an advanced option and should not be changed unless you suspect
;; performance issues due to garbage collection operations.
;; (default '(100000000 0.1))
dotspacemacs-gc-cons '(100000000 0.1)
</p>

<p>
;; If non-nil then Spacelpa repository is the primary source to install
;; a locked version of packages. If nil then Spacemacs will install the
;; latest version of packages from MELPA. (default nil)
dotspacemacs-use-spacelpa t
</p>

<p>
;; If non-nil then verify the signature for downloaded Spacelpa archives.
;; (default nil)
dotspacemacs-verify-spacelpa-archives nil
</p>

<p>
;; If non-nil then spacemacs will check for updates at startup
;; when the current branch is not `develop'. Note that checking for
;; new versions works via git commands, thus it calls GitHub services
;; whenever you start Emacs. (default nil)
dotspacemacs-check-for-update nil
</p>

<p>
;; If non-nil, a form that evaluates to a package directory. For example, to
;; use different package directories for different Emacs versions, set this
;; to `emacs-version'. (default 'emacs-version)
dotspacemacs-elpa-subdirectory 'emacs-version
</p>

<p>
;; One of `vim', `emacs' or `hybrid'.
;; `hybrid' is like `vim' except that `insert state' is replaced by the
;; `hybrid state' with `emacs' key bindings. The value can also be a list
;; with `:variables' keyword (similar to layers). Check the editing styles
;; section of the documentation for details on available variables.
;; (default 'vim)
dotspacemacs-editing-style 'vim
</p>

<p>
;; Specify the startup banner. Default value is `official', it displays
;; the official spacemacs logo. An integer value is the index of text
;; banner, `random' chooses a random text banner in `core/banners'
;; directory. A string value must be a path to an image format supported
;; by your Emacs build.
;; If the value is nil then no banner is displayed. (default 'official)
dotspacemacs-startup-banner 'official
</p>

<p>
;; List of items to show in startup buffer or an association list of
;; the form `(list-type . list-size)`. If nil then it is disabled.
;; Possible values for list-type are:
;; `recents' `bookmarks' `projects' `agenda' `todos'.
;; List sizes may be nil, in which case
;; `spacemacs-buffer-startup-lists-length' takes effect.
dotspacemacs-startup-lists '((recents . 5)
                             (projects . 7))
</p>

<p>
;; True if the home buffer should respond to resize events. (default t)
dotspacemacs-startup-buffer-responsive t
</p>

<p>
;; Default major mode for a new empty buffer. Possible values are mode
;; names such as `text-mode'; and `nil' to use Fundamental mode.
;; (default `text-mode')
dotspacemacs-new-empty-buffer-major-mode 'text-mode
</p>

<p>
;; Default major mode of the scratch buffer (default `text-mode')
dotspacemacs-scratch-mode 'org-mode
;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
;; (default nil)
dotspacemacs-initial-scratch-message nil
</p>

<p>
;; List of themes, the first of the list is loaded when spacemacs starts.
;; Press `SPC T n' to cycle to the next theme in the list (works great
;; with 2 themes variants, one dark and one light)
dotspacemacs-themes '(
                      spacemacs-light
                      spacemacs-dark
                      )
</p>

<p>
;; Set the theme for the Spaceline. Supported themes are `spacemacs',
;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
;; refer to the DOCUMENTATION.org for more info on how to create your own
;; spaceline theme. Value can be a symbol or list with additional properties.
;; (default '(spacemacs :separator wave :separator-scale 1.5))
dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
</p>

<p>
;; If non-nil the cursor color matches the state color in GUI Emacs.
;; (default t)
dotspacemacs-colorize-cursor-according-to-state t
</p>

<p>
;; Default font or prioritized list of fonts.
dotspacemacs-default-font '("Source Code Pro"
                            :size 14.0
                            :weight normal
                            :width normal)
</p>

<p>
;; The leader key (default "SPC")
dotspacemacs-leader-key "SPC"
</p>

<p>
;; The key used for Emacs commands `M-x' (after pressing on the leader key).
;; (default "SPC")
dotspacemacs-emacs-command-key "SPC"
</p>

<p>
;; The key used for Vim Ex commands (default ":")
dotspacemacs-ex-command-key ":"
</p>

<p>
;; The leader key accessible in `emacs state' and `insert state'
;; (default "M-m")
dotspacemacs-emacs-leader-key "M-m"
</p>

<p>
;; Major mode leader key is a shortcut key which is the equivalent of
;; pressing `&lt;leader&gt; m`. Set it to `nil` to disable it. (default ",")
dotspacemacs-major-mode-leader-key ","
</p>

<p>
;; Major mode leader key accessible in `emacs state' and `insert state'.
;; (default "C-M-m")
dotspacemacs-major-mode-emacs-leader-key "C-M-m"
</p>

<p>
;; These variables control whether separate commands are bound in the GUI to
;; the key pairs `C-i', `TAB' and `C-m', `RET'.
;; Setting it to a non-nil value, allows for separate commands under `C-i'
;; and TAB or `C-m' and `RET'.
;; In the terminal, these pairs are generally indistinguishable, so this only
;; works in the GUI. (default nil)
dotspacemacs-distinguish-gui-tab nil
</p>

<p>
;; Name of the default layout (default "Default")
dotspacemacs-default-layout-name "Default"
</p>

<p>
;; If non-nil the default layout name is displayed in the mode-line.
;; (default nil)
dotspacemacs-display-default-layout nil
</p>

<p>
;; If non-nil then the last auto saved layouts are resumed automatically upon
;; start. (default nil)
dotspacemacs-auto-resume-layouts nil
</p>

<p>
;; If non-nil, auto-generate layout name when creating new layouts. Only has
;; effect when using the "jump to layout by number" commands. (default nil)
dotspacemacs-auto-generate-layout-names nil
</p>

<p>
;; Size (in MB) above which spacemacs will prompt to open the large file
;; literally to avoid performance issues. Opening a file literally means that
;; no major mode or minor modes are active. (default is 1)
dotspacemacs-large-file-size 10000
</p>

<p>
;; Location where to auto-save files. Possible values are `original' to
;; auto-save the file in-place, `cache' to auto-save the file to another
;; file stored in the cache directory and `nil' to disable auto-saving.
;; (default 'cache)
dotspacemacs-auto-save-file-location 'cache
</p>

<p>
;; Maximum number of rollback slots to keep in the cache. (default 5)
dotspacemacs-max-rollback-slots 5
</p>

<p>
;; If non-nil, the paste transient-state is enabled. While enabled, after you
;; paste something, pressing `C-j' and `C-k' several times cycles through the
;; elements in the `kill-ring'. (default nil)
dotspacemacs-enable-paste-transient-state t
</p>

<p>
;; Which-key delay in seconds. The which-key buffer is the popup listing
;; the commands bound to the current keystroke sequence. (default 0.4)
dotspacemacs-which-key-delay 0.3
</p>

<p>
;; Which-key frame position. Possible values are `right', `bottom' and
;; `right-then-bottom'. right-then-bottom tries to display the frame to the
;; right; if there is insufficient space it displays it at the bottom.
;; (default 'bottom)
dotspacemacs-which-key-position 'bottom
</p>

<p>
;; Control where `switch-to-buffer' displays the buffer. If nil,
;; `switch-to-buffer' displays the buffer in the current window even if
;; another same-purpose window is available. If non-nil, `switch-to-buffer'
;; displays the buffer in a same-purpose window even if the buffer can be
;; displayed in the current window. (default nil)
dotspacemacs-switch-to-buffer-prefers-purpose nil
</p>

<p>
;; If non-nil a progress bar is displayed when spacemacs is loading. This
;; may increase the boot time on some systems and emacs builds, set it to
;; nil to boost the loading time. (default t)
dotspacemacs-loading-progress-bar t
</p>

<p>
;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
;; (Emacs 24.4+ only)
dotspacemacs-fullscreen-at-startup nil
</p>

<p>
;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
;; Use to disable fullscreen animations in OSX. (default nil)
dotspacemacs-fullscreen-use-non-native nil
</p>

<p>
;; If non-nil the frame is maximized when Emacs starts up.
;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
;; (default nil) (Emacs 24.4+ only)
dotspacemacs-maximized-at-startup t
</p>

<p>
;; If non-nil the frame is undecorated when Emacs starts up. Combine this
;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
;; borderless fullscreen. (default nil)
dotspacemacs-undecorated-at-startup nil
</p>

<p>
;; A value from the range (0..100), in increasing opacity, which describes
;; the transparency level of a frame when it's active or selected.
;; Transparency can be toggled through `toggle-transparency'. (default 90)
dotspacemacs-active-transparency 90
</p>

<p>
;; A value from the range (0..100), in increasing opacity, which describes
;; the transparency level of a frame when it's inactive or deselected.
;; Transparency can be toggled through `toggle-transparency'. (default 90)
dotspacemacs-inactive-transparency 90
</p>

<p>
;; If non-nil show the titles of transient states. (default t)
dotspacemacs-show-transient-state-title t
</p>

<p>
;; If non-nil show the color guide hint for transient state keys. (default t)
dotspacemacs-show-transient-state-color-guide t
</p>

<p>
;; If non-nil unicode symbols are displayed in the mode line.
;; If you use Emacs as a daemon and wants unicode characters only in GUI set
;; the value to quoted `display-graphic-p'. (default t)
dotspacemacs-mode-line-unicode-symbols t
</p>

<p>
;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
;; scrolling overrides the default behavior of Emacs which recenters point
;; when it reaches the top or bottom of the screen. (default t)
dotspacemacs-smooth-scrolling t
</p>

<p>
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
</p>

<p>
;; Code folding method. Possible values are `evil' and `origami'.
;; (default 'evil)
dotspacemacs-folding-method 'evil
</p>

<p>
;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
;; (default nil)
dotspacemacs-smartparens-strict-mode nil
</p>

<p>
;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
;; over any automatically added closing parenthesis, bracket, quote, etc&#x2026;
;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
;; dotspacemacs-smart-closing-parenthesis 'C-q
dotspacemacs-smart-closing-parenthesis nil
</p>

<p>
;; Select a scope to highlight delimiters. Possible values are `any',
;; `current', `all' or `nil'. Default is `all' (highlight any scope and
;; emphasis the current one). (default 'all)
dotspacemacs-persistent-server t
</p>

<p>
;; List of search tool executable names. Spacemacs uses the first installed
;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
;; (default '("rg" "ag" "pt" "ack" "grep"))
dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
</p>

<p>
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
dotspacemacs-frame-title-format "%b %f %p %m %z &#x2013; 事实上，诸多情绪的产生都可以归结为无能"
;; dotspacemacs-frame-title-format "%a %t %I %S %U %b %f %F %s %p %P %m %n %z %Z"
</p>

<p>
;; Format specification for setting the icon title format
;; (default nil - same as frame-title-format)
dotspacemacs-icon-title-format nil
</p>

<p>
;; Delete whitespace while saving buffer. Possible values are `all'
;; to aggressively delete empty line and long sequences of whitespace,
;; `trailing' to delete only the whitespace at end of lines, `changed' to
;; delete only whitespace for changed lines or `nil' to disable cleanup.
;; (default nil)
dotspacemacs-whitespace-cleanup nil
</p>

<p>
;; Either nil or a number of seconds. If non-nil zone out after the specified
;; number of seconds. (default nil)
dotspacemacs-zone-out-when-idle nil
</p>

<p>
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
</p>

<p>
(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect)
  ;; 显示垃圾回收信息，这个可以作为调试用
  ;; (setq garbage-collection-messages t)
  )
;; (setq configuration-layer-elpa-archives
;;     '(("melpa-cn" . "<a href="http://elpa.emacs-china.org/melpa/">http://elpa.emacs-china.org/melpa/</a>")
;;       ("org-cn"   . "<a href="http://elpa.emacs-china.org/org/">http://elpa.emacs-china.org/org/</a>")
;;       ("gnu-cn"   . "<a href="http://elpa.emacs-china.org/gnu/">http://elpa.emacs-china.org/gnu/</a>")))
</p>

<p>
  ;; ;; Don’t compact font caches during GC.
  (setq inhibit-compacting-font-caches t)
  (setq tramp-ssh-controlmaster-options
        "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")
  ;; proxy
  (setq url-proxy-services '(("no<sub>proxy</sub>" . "127.0.0.1")
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
</p>

<p>
;;;;;;;;;;;;;;
;;;  Theme ;;;
;;;;;;;;;;;;;;
</p>

<p>
;; 调试好久的颜色，效果超赞！todo keywords 增加背景色
;; (setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
;;                                ("HAND" . (:foreground "white" :background "#2E8B57"  :weight bold))
;;                                ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))
</p>

<p>
;;;;;;;;;;;;;;
  ;; 显示相关 ;;
;;;;;;;;;;;;;;
</p>

<p>
;; 在状态栏显示时间
</p>

<p>
(setq focus-dimness 20)
(display-time-mode 1)
;;字体问题
(cnfonts-enable)
(cnfonts-set-spacemacs-fallback-fonts)
(setq cnfonts-profiles-directory "~/.spacemacs.d/cnfonts/")
</p>

<p>
;; 更改spacemacs自带的字体快捷键
(defun spacemacs/scale-up-font ()
  "zoom in frame, but keep the same pixel size"
  (interactive)
  (cnfonts-increase-fontsize))
</p>

<p>
(defun spacemacs/scale-down-font ()
  "zoom out frame, but keep the same pixel size"
  (interactive)
  (cnfonts-decrease-fontsize))
</p>

<p>
(defun spacemacs/reset-font-size ()
  "Unzoom current frame, keeping the same pixel size"
  (interactive)
  (cnfonts-switch-profile))
</p>


<p>
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
</p>


<p>
;;;;;;;;;;;;;;
;;; Python ;;;
;;;;;;;;;;;;;;
</p>

<p>
(add-hook 'python-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends) '(company-dabbrev company-diag)))) ;fixed complement
;; importmagic-mode 会导致变得卡顿，暂时禁用
(remove-hook 'python-mode-hook 'importmagic-mode)
(setq org-confirm-babel-evaluate nil)
(setq python-indent-offset 2)
(setq python-indent-guess-indent-offset-verbose nil)
;; (add-to-list 'load-path "C:/Users/Elliott/.spacemacs.d/anaconda-mode")
;; (setenv "WORKON<sub>HOME</sub>" "C:/tools/Anaconda3/Lib/site-packages/conda<sub>env</sub>")
(setq org-babel-python-command "python3")
;; (setq python-shell-interpreter "ipython"
;;       python-shell-interpreter-args "&#x2013;simple-prompt -i")
</p>

<p>
;; (setq spacemacs/python-execute-file "ipython"
;;       ;; python-shell-interpreter-args "-i"
;;       )
</p>


<p>
;; (setq python-shell-interpreter "c:/tools/Anaconda3/python.exe")
;; ;; (setq py-python-command "/usr/local/bin/python2")
;; (setq python-shell-completion-native-enable nil)
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
</p>




<p>
;;;;;;;;;;;;;;
  ;;Additional keyboard;;
;;;;;;;;;;;;;;
</p>

<p>
(evil-leader/set-key "oy" 'youdao-dictionary-search-at-point+)
(evil-leader/set-key "od" 'find-by-pinyin-dired)
(evil-leader/set-key "ote" 'evil-org-mode)
(evil-leader/set-key "otf" 'focus-mode)
(evil-leader/set-key "ott" 'spaceline-toggle-org-clock)
(evil-leader/set-key "otn" 'org-noter)
(define-key evil-insert-state-map (kbd "C-s") 'helm-swoop)
(define-key evil-normal-state-map (kbd "C-s") 'helm-swoop)
;; (define-key evil-insert-state-map (kbd "C-]") 'forward-char)
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
</p>




<p>
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
</p>

<p>
(w32-shell-execute "runas" "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem<sub>get</sub><sub>status.ahk</sub>")
;; (shell-command "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem<sub>to</sub><sub>english.ahk</sub>")
)
</p>

<p>
(defun get-string-from-file (my-file)
  "Return filePath's file content."
  (with-temp-buffer
    (insert-file-contents my-file)
    (buffer-string)))
</p>

<p>
(defun my-ahk-switch-chinese() ; ; buffer-local variables这类东西你就应该（基本上也只能）写在hook里
  ;; (add-to-list  'company-backends  'company-c-headers)
  ;; (setq flycheck-gcc-language-standard " c++11 ")
  ;; (setq flycheck-clang-language-standard " c++11 ") ; ; ocal key-binding的相关设定一起放在hook中是很常见的作法
  ;; (define-key c++-mode-map (kbd "Cc h") 'ff-find-other-file) ; ;这里放一些希望随着C++ mode自动启动的minor-mode
  ;; (flycheck-mode 1)
  ;; (rainbow-delimiters-mode-enable)
  ;;(write-region "1" nil "C:\\software\\autohotkey\\Capslock+\\userAHK\\evil.txt")
  ;; (w32-shell-execute "runas" "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem<sub>get</sub><sub>status.ahk</sub>")
  (setq iem-status (get-string-from-file "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\evil.txt"))
</p>

<p>
(if (= (string-to-number iem-status) 1)
    (w32-shell-execute "runas" "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem<sub>to</sub><sub>chinese.ahk</sub>") nil)
;; (shell-command "C:\\software\\autohotkey\\Capslock+\\userAHK\\emacs\\iem<sub>to</sub><sub>chinese.ahk</sub>")
)
</p>

<p>
(defun my-iem-on()
  "nothing"
  (interactive)
  (add-hook 'evil-normal-state-entry-hook 'my-ahk-switch-english)
  (add-hook 'evil-normal-state-exit-hook 'my-ahk-switch-chinese)
  )
</p>

<p>
(defun my-iem-off()
  "nothing"
  (interactive)
  (remove-hook 'evil-normal-state-entry-hook 'my-ahk-switch-english)
  (remove-hook 'evil-normal-state-exit-hook 'my-ahk-switch-chinese)
  )
;; (my-ahk-switch-english)
;; (my-iem-on)
</p>

<p>
;; agenda 下调用比较缓慢,这里暂时关闭了
</p>

<p>
;; (add-hook 'org-agenda-mode-hook 'my-iem-off)
;; (add-hook 'org-agenda-finalize-hook 'my-iem-on)
;; (remove-hook 'org-agenda-finalize-hook 'my-iem-off)
</p>

<p>
(evil-leader/set-key "oti" 'my-iem-on)
(evil-leader/set-key "otI" 'my-iem-off)
</p>


<p>
;;;;;;;;;;;;;;
;;;Org;;;
;;;;;;;;;;;;;;
  ;; 字数统计
  (defvar wc-regexp-chinese-char-and-punc
    (rx (category chinese)))
  (defvar wc-regexp-chinese-punc
    "[。，！？；：「」『』（）、【】《》〈〉※—]")
  (defvar wc-regexp-english-word
    "[a-zA-Z0-9-]+")
</p>

<p>
(defun wc ()
  "「較精確地」統計中<i>日</i>英文字數。
</p>
<ul class="org-ul">
<li>文章中的註解不算在字數內。</li>
<li>平假名與片假名亦包含在「中日文字數」內，每個平/片假名都算單獨一個字（但片假名不含連音「ー」）。</li>
<li>英文只計算「單字數」，不含標點。</li>
<li>韓文不包含在內。</li>
</ul>

<p>
※計算標準太多種了，例如英文標點是否算入、以及可能有不太常用的標點符號沒算入等。且中日文標點的計算標準要看 Emacs 如何定義特殊標點符號如ヴァランタン・アルカン中間的點也被 Emacs 算為一個字而不是標點符號。"
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
<code>=====================</code>
中英文合計（不含標點）：%s"
               chinese-char chinese-char-and-punc english-word
               (+ chinese-char english-word)))))
</p>


<p>
;;load el directory
(add-to-list 'load-path "C:/Users/xx299/.spacemacs.d/elisp")
;; Auto-save
;; (require 'auto-save)
;; (setq auto-save-silent t)   ; quietly save
;; (setq auto-save-delete-trailing-whitespace t)  ; automatically delete spaces at the end of the line when saving
(require 'real-auto-save)
(add-hook 'org-mode-hook 'real-auto-save-mode)
;; (add-hook 'prog-mode-hook 'real-auto-save-mode)
(setq real-auto-save-interval 10)
(defmacro with-suppressed-message (&amp;rest body)
  "Suppress new messages temporarily in the echo area and the `*Messages*' buffer while BODY is evaluated."
  (declare (indent 0))
  (let ((message-log-max nil))
    `(with-temp-message (or (current-message) "") ,@body)))
</p>

<p>
(with-suppressed-message (save-buffer))
</p>

<p>
;; (defmacro no-message (&amp;rest body)
;;   "Eval BODY, with `message' doing nothing."
;;   `(cl-letf (((symbol-function 'message)
;;               (lambda (&amp;rest args)
;;                 nil)))
;;      (progn ,@body)))
</p>

<p>
;; (no-message
;;  (message "meaningless")  ; do nothing
;;  (print [1 2 3])  ; not affected
;;  (save-buffer))  ; won't display messages in minibuffer
</p>


<p>
;; (evil-leader/set-key "ota" '(remove-hook org-mode-hook real-auto-save-mode))
;; (remove-hook 'org-mode-hook 'real-auto-save-mode)
;; Auto-save-&#x2014;end
;; emoji
;; (add-hook 'org-mode-hook 'emojify-mode)
;; (setq emojify-emojis-dir "c:/Users/xx299/.spacemacs.d/.cache/emojify/")
</p>

<p>
;; (require 'jieba)
;; (jieba-mode)
</p>

<p>
;; hooks
</p>

<p>
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
  (org-download&#x2013;fullname (org-link-unescape link)))
(setq org-download-method 'custom-org-download-method) ; 注意：这里不能用lambda表达式
;; 顺便改下annotate，就是自动插入的那行注释，里面写的是图片来源路径
(setq org-download-annotate-function 'ignore)
(setq org-download-annotate-function (lambda (<sub>link</sub>) ""))
;; (setq org-download-annotate-function
;;       '(lambda (link)
;;         (org-download-annotate-default (org-link-unescape link))))
(global-set-key (kbd "C-c y") 'org-download-yank)
</p>

<p>
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
              (format "#+attr<sub>html</sub>: :width %dpx\n" org-download-image-html-width)))
    (insert (if (= org-download-image-latex-width 0)
                ""
              (format "#+attr<sub>latex</sub>: :width %dcm\n" org-download-image-latex-width)))
    (insert (if (= org-download-image-org-width 0)
                ""
              (format "#+attr<sub>org</sub>: :width %dpx\n" org-download-image-org-width)))
    (insert
     (format org-download-link-format
             (org-link-escape
              (funcall org-download-abbreviate-filename-function filename))))
    (org-download&#x2013;display-inline-images)
    (setq str (buffer-substring-no-properties line-beg (point)))
    (when in-item-p
      (indent-region line-beg (point) indent))
    str))
</p>


<p>
;; Drag-and-drop to `dired`
</p>

<p>
;; (add-hook 'org-mode-hook 'aggressive-indent-mode)
(add-hook 'dired-mode-hook 'org-download-enable)
;; (add-hook 'org-mode-hook 'auto-fill-mode)
(add-hook 'org-mode-hook 'smartparens-mode)
(add-hook 'org-mode-hook 'org-indent-mode)
</p>

<p>
;; auto added whitespace
;; SPC h SPC search pangu-spacing
</p>



<p>
;; <a href="https://github.com/KingBing/blog-src/blob/e259933e9bc5f246fde50645f024731a16bb6bbc/blog/%E5%9C%A8%20org-mode%20%E4%B8%AD%E9%A1%AF%E7%A4%BA%E5%9C%96%E7%89%87.org">https://github.com/KingBing/blog-src/blob/e259933e9bc5f246fde50645f024731a16bb6bbc/blog/%E5%9C%A8%20org-mode%20%E4%B8%AD%E9%A1%AF%E7%A4%BA%E5%9C%96%E7%89%87.org</a>
(setq image-type-available-p 'imagemagick)
(setq org-image-actual-width '(500))       ; Fallback to width 300
</p>

<p>
(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
(with-eval-after-load 'org
  ;; 临时解决图片缩放问题
</p>

<p>
   ;; Copied from <a href="https://github.com/jkitchin/scimax/blob/master/scimax-org.el">https://github.com/jkitchin/scimax/blob/master/scimax-org.el</a>
   ;; * Rescaling inline-images
   ;; This will eventually be obsolete if this makes it into org-mode
   (defvar org-inline-image-resize-function
     #'org-inline-image-resize
     "Function that takes a filename and resize argument and returns
a new filename pointing to the resized image.")
</p>

<p>
    (defun org-inline-image-resize (fname resize-options)
      "Resize FNAME with RESIZE-OPTIONS.
RESIZE-OPTIONS are passed to \"mogrify resized-fname -resize resize-options\".
RESIZE-OPTIONS could be:
N% to scale the image by a percentage.
N to set the width, keeping the aspect ratio constant.
xN to set the height, keeping the aspect ratio constant.
NxM! to set the width and height, ignoring the aspect ratio.
See <a href="http://www.imagemagick.org/Usage/resize/#resize">http://www.imagemagick.org/Usage/resize/#resize</a> for more options."
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
              (message "No mogrify executable found. To eliminate this message, set  `org-inline-image-resize-function' to nil or install imagemagick from <a href="http://www.imagemagick.org/script/binary-releases.php">http://www.imagemagick.org/script/binary-releases.php</a>")
              fname)
          (unless (file-exists-p resized-fname)
            (copy-file fname resized-fname)
            (shell-command cmd))
          resized-fname)))
</p>

<p>
    ;; this is copied and modified from org.el
    (defun org-display-inline-images (&amp;optional include-linked refresh beg end)
      "Display inline images.
An inline image is a link which follows either of these
conventions:
</p>
<ol class="org-ol">
<li>Its path is a file with an extension matching return value
from `image-file-name-regexp' and it has no contents.</li>
<li>Its description consists in a single link of the previous
type.</li>
</ol>
<p>
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
                                      (attr<sub>org</sub> (org-element-property :attr<sub>org</sub> paragraph)))
                                 (when attr<sub>org</sub>
                                   (plist-get
                                    (org-export-read-attribute :attr<sub>org</sub>  paragraph) :width)))
                               ;; Otherwise, fall-back to provided number.
                               (car org-image-actual-width)))
                             ((numberp org-image-actual-width)
                              org-image-actual-width)))
                           (old (get-char-property-and-overlay
                                 (org-element-property :begin link)
                                 'org-image-overlay)))
                       (if (and (car-safe old) refresh)
                           (image-refresh (overlay-get (cdr old) 'display))
</p>

<p>
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
</p>

<p>
;; * Enable pdf and eps images in org-mode
;; Suggested on the org-mode maillist by Julian Burgos
;; (add-to-list 'image-file-name-extensions "pdf")
(add-to-list 'image-file-name-extensions "eps")
</p>

<p>
(add-to-list 'image-type-file-name-regexps '("\\.eps\\'" . imagemagick))
(add-to-list 'image-file-name-extensions "eps")
;; (add-to-list 'image-type-file-name-regexps '("\\.pdf\\'" . imagemagick))
;; (add-to-list 'image-file-name-extensions "pdf")
</p>

<p>
;; (setq imagemagick-types-inhibit (remove 'PDF imagemagick-types-inhibit))
</p>

<p>
;; 临时解决图片缩放问题END
</p>

<p>
;;init-org
;;init-freemind
(require 'ox-freemind)
(setq org-freemind-styles
      '((default . "&lt;node&gt;\n&lt;/node&gt;")
        (0 . "&lt;node COLOR=\"#000000\"&gt;\n&lt;font NAME=\"SansSerif\" SIZE=\"20\"/&gt;\n&lt;/node&gt;")
        (1 . "&lt;node COLOR=\"#0033ff\"&gt;\n&lt;edge STYLE=\"sharp<sub>bezier</sub>\" WIDTH=\"8\"/&gt;\n&lt;font NAME=\"SansSerif\" SIZE=\"18\"/&gt;\n&lt;/node&gt;")
        (2 . "&lt;node COLOR=\"#00b439\"&gt;\n&lt;edge STYLE=\"bezier\" WIDTH=\"thin\"/&gt;\n&lt;font NAME=\"SansSerif\" SIZE=\"16\"/&gt;\n&lt;/node&gt;")
        (3 . "&lt;node COLOR=\"#990000\" FOLDED=\"true\"&gt;\n&lt;font NAME=\"SansSerif\" SIZE=\"14\"/&gt;\n&lt;/node&gt;")
        (4 . "&lt;node COLOR=\"#990000\" FOLDED=\"true\"&gt;\n&lt;font NAME=\"SansSerif\" SIZE=\"12\"/&gt;\n&lt;/node&gt;")
        (5 . "&lt;node COLOR=\"#990000\" FOLDED=\"true\"&gt;\n&lt;font NAME=\"SansSerif\" SIZE=\"10\"/&gt;\n&lt;/node&gt;")
        (6 . "&lt;node COLOR=\"#111111\"&gt;\n&lt;/node&gt;"))
</p>

<p>
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
  (define-key writeroom-mode-map (kbd "C-M-&lt;") #'writeroom-decrease-width)
  (define-key writeroom-mode-map (kbd "C-M-&gt;") #'writeroom-increase-width)
  (define-key writeroom-mode-map (kbd "C-M-=") #'writeroom-adjust-width))
;; template使模板生效
(require 'org-tempo)
;; (setq org-ellipsis " ▼")
;; (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
</p>

<p>
                                    ; 一段关于设置frame标题的代码,在标题显示clock时钟
;; (defun sanityinc/show-org-clock-in-header-line ()
;;   (setq-default header-line-format '((" " org-mode-line-string " "))))
</p>

<p>
;; (defun sanityinc/hide-org-clock-from-header-line ()
;;   (setq-default header-line-format nil))
</p>

<p>
;; (add-hook 'org-clock-in-hook 'sanityinc/show-org-clock-in-header-line)
;; (add-hook 'org-clock-out-hook 'sanityinc/hide-org-clock-from-header-line)
;; (add-hook 'org-clock-cancel-hook 'sanityinc/hide-org-clock-from-header-line)
</p>

<p>
;; (after-load 'org-clock
;;             (define-key org-clock-mode-line-map [header-line mouse-2] 'org-clock-goto)
;;             (define-key org-clock-mode-line-map [header-line mouse-1] 'org-clock-menu))
</p>

<p>
;; (when (and <b>is-a-mac</b> (file-directory-p "/Applications/org-clock-statusbar.app"))
;;   (add-hook 'org-clock-in-hook
;;             (lambda () (call-process "/usr/bin/osascript" nil 0 nil "-e"
;;                                      (concat "tell application \"org-clock-statusbar\" to clock in \"" org-clock-current-task "\""))))
</p>

<p>
;;; custom org emhasis color
    ;; (require 'org)
    ;; (require 'cl)   ; for delete*
    ;; (setq org-emphasis-alist
    ;;       (cons '("+" '(:strike-through t :foreground "gray"))
    ;;             (delete* "+" org-emphasis-alist :key 'car :test 'equal)))
</p>

<p>
;; (setq org-emphasis-alist
;;       (cons '("*" '(:emphasis t :foreground "blue"))
;;             (delete* "*" org-emphasis-alist :key 'car :test 'equal)))
</p>

<p>
;; (org-refile-targets (quote (("newgtd.org" :maxlevel . 1)
;;                              ("someday.org" :level . 2))))
</p>


<p>
(setq-default org-default-notes-file "~/Dropbox/org/GTD/task.org")
;; (setq org-capture-templates
;;       '(("z" "Todo" entry (file+headline "~/Dropbox/org/gtd.org" "Tasks")
;;          "* TODO %?\n  %i\n  %a")
;;         ("j" "Journal" entry (file+datetree "~/Dropbox/org/journal.org")
;;          "* %?\nEntered on %U\n  %i\n  %a")))
</p>

<p>
;;init-org-super-agenda
(setq org-super-agenda-groups
      '(
        ;; (:name "Today"
        ;;         :time-grid t
        ;;         :date today
        ;;         ;; :todo "TODAY"
        ;;         :scheduled today
        ;;         :order 2
        ;;         )
        (:name "ENGLISH"
                :tag "ENGLISH"
                :order 1
                )
        (:name "BOOK"
                :tag "BOOK"
                :order 11)
        (:name "Due Today"
                :deadline today
                :order 3)
        (:name "Due Soon"
                :deadline future
                :order 3
                )
        (:name "Overdue"
               :deadline past
               :scheduled past)
        (:name "Projects"
                :tag "Project"
                :order 12)
        (:name "Research"
                :tag "Research"
                :order 13)
        (:name "Routine"
                                  ;:habit
                :order 10
                )
        (:order-multi (3 (:name "Done today"
                                :and (:regexp "State \"DONE\""
                                              :log t)
                                )
                          (:name "Clocked today"
                                :log t
                                )
                          ))
        (:priority&lt;= "B"
                      :order 1)
</p>

<p>
        )
     )
                                  ;(setq org-agenda nil "a")
(org-super-agenda-mode t)
</p>

<p>
;;agenda
;; 农历生日
;; <a href="https://emacs-china.org/t/topic/2119/19?u=elliott">https://emacs-china.org/t/topic/2119/19?u=elliott</a>
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
</p>

<p>
(defun my&#x2013;diarY-chinese-anniversary (lunar-month lunar-day &amp;optional year mark)
  (if year
      (let* ((d-date (diary-make-date lunar-month lunar-day year))
             (a-date (calendar-absolute-from-gregorian d-date))
             (c-date (calendar-chinese-from-absolute a-date))
             (cycle (car c-date))
             (yy (cadr c-date))
             (y (+ (* 100 cycle) yy)))
        (diary-chinese-anniversary lunar-month lunar-day y mark))
    (diary-chinese-anniversary lunar-month lunar-day year mark)))
</p>

<p>
(setq org-agenda-span 'day)
(setq diary-file "~/.spacemacs.d/diary")
(setq org-deadline-warning-days 0)  ; 设置默认警告时间。
(setq org-agenda-include-diary t)
(setq org-capture-templates nil)
;; capture-init
(add-to-list 'org-capture-templates '("t" "Tasks"))
(add-to-list 'org-capture-templates
             '("ta" "Project" entry
               (file "~/Dropbox/org/GTD/task.org")
               "* TODO [#A] %<sup>Project</sup> %<sup>G</sup> \nSCHEDULED: %<sup>t\n</sup>%?" :clock-in t :clock-resume t))
(add-to-list 'org-capture-templates
             '("tb" "Task" entry
               (file "~/Dropbox/org/GTD/task.org")
               "* TODO %<sup>Project</sup> %<sup>G</sup> \nSCHEDULED: %<sup>t\n</sup>%?" :clock-in t :clock-resume t))
(add-to-list 'org-capture-templates
             '("tc" "Project" entry
               (file "~/Dropbox/org/GTD/task.org")
               "* TODO [#C] %<sup>Project</sup> %<sup>G</sup> \nSCHEDULED: %<sup>t\n</sup>%?" :clock-in t :clock-resume t))
(add-to-list 'org-capture-templates
             '("ts" "Project" entry
               (file "~/Dropbox/org/GTD/suspend.org")
               "* TODO [#B] %<sup>Project</sup> %<sup>G</sup> \nSCHEDULED: %<sup>t\n</sup>%?" :clock-in t :clock-resume t))
</p>

<p>
;; 有的时候，会有临时的小任务，比如说，将要出门，需要准备一些东西，
;; 这个迷你项目得作用就来了，想到一条写一条
(add-to-list 'org-capture-templates
             '("tm" "Mini" item
               (file+headline "~/Dropbox/org/GTD/task.org" "Mini<sub>Project</sub>")
               "%<sup>content</sup>"))
;; 想法类相关捕获模板
(add-to-list 'org-capture-templates '("i" "Idea"))
(add-to-list 'org-capture-templates
             '("it" "Temp Idea" entry
               (file+headline "~/Dropbox/org/GTD/ideas.org" "Temp")
               "* %<sup>core<sub>idea</sub></sup>  \n" :clock-in t :clock-resume t))
(add-to-list 'org-capture-templates
             '("ip" "About people" entry
               (file+headline "~/Dropbox/org/GTD/ideas.org" "People")
               "* %<sup>core<sub>idea</sub></sup>  \n" :clock-in t :clock-resume t))
(add-to-list 'org-capture-templates
             '("im" "About matter" entry
               (file+headline "~/Dropbox/org/GTD/ideas.org" "Matter")
               "* %<sup>core<sub>idea</sub></sup>\n  \n" :clock-in t :clock-resume t))
;; 日志
(add-to-list 'org-capture-templates
             '("j" "Journal" entry (file+datetree "~/Dropbox/org/GTD/Journal.org")
               "* %U - %<sup>heading</sup>\n  %?" :clock-in t :clock-resume t))
;; GTD 记录 <a href="https://orgmode.org/manual/Template-expansion.html">https://orgmode.org/manual/Template-expansion.html</a>
(add-to-list 'org-capture-templates
             '("g" "GTD" entry (file+datetree "c:/Users/xx299/Dropbox/org/GTD/GTD<sub>problem.org</sub>")
               "* TODO %U - %<sup>heading</sup> %<sup>G\n</sup>  %a\n\n   %?" :clock-in t :clock-resume t))
</p>

<p>
;;-----------------------&#x2013;&#x2014;;;
(add-to-list 'org-capture-templates '("p" "Project"))
(add-to-list 'org-capture-templates
             '("pe" "English<sub>System</sub>" item
               (file+headline "~/Dropbox/org/GTD/task.org" "English<sub>system</sub>")
               "%<sup>content</sup>"))
</p>

<p>
(add-to-list 'org-capture-templates
             '("pp" "TARGET" entry
               (file+headline "~/Dropbox/org/GTD/project.org" "My goal")
               "* TODO %<sup>Speak your mind</sup>  \n" :clock-in t :clock-resume t))
</p>



<p>
;;-----------------------&#x2013;&#x2014;;;
</p>

<p>
;;; ORG-MODE:  * My Task
;;;              SCHEDULED: <span class="timestamp-wrapper"><span class="timestamp">&lt;%%(diary-last-day-of-month date)&gt;</span></span>
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
</p>

<p>
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
        ("pu" tags "PROJECT")
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
</p>

<p>
;; (setq org-capture-templates '(("j" "Journal entry" entry (function org-journal-find-location)
;;                                "* %(format-time-string org-journal-time-format)%<sup>Title</sup>\n%i%?")))
</p>


<p>
(setq org-todo-keywords
      '((sequence "TODO(t!)" "NEXT(n!)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d@/!)" "ABORT(a@/!)")
        ;; '((sequence "TODO(t)" "NEXT(n)" "WAITTING(w)" "SOMEDAY(s)" "|" "DONE(d)" "ABORT(a)")
        ))
;; 设置TODO完成状态改变抽屉
(setq org-log-into-drawer "LOGBOOK")
</p>

<p>
;; 配置归档文件的名称和 Headline 格式
</p>

<p>
(setq org-archive-location "~/Dropbox/org/GTD/archive.org::datetree/")
</p>

<p>
;; (defun org-archive-save-buffer ()
;;   (let ((afile (org-extract-archive-file (org-get-local-archive-location))))
;;     (if (file-exists-p afile)
;;         (let ((buffer (find-file-noselect afile)))
;;           (if (y-or-n-p (format "Save (%s)" buffer))
;;               (with-current-buffer buffer
;;                 (save-buffer))
;;             (message "You expressly chose <span class="underline">not</span> to save (%s)" buffer)))
;;       (message "Ooops &#x2026; (%s) does not exist." afile))))
;; (add-hook 'org-archive-hook 'org-archive-save-buffer)
</p>

<p>
(setq org-agenda-files
      (append (file-expand-wildcards "~/Dropbox/org/GTD/*.org")
              ))
</p>

<p>
;; Delete unwanted files
(setq org-agenda-exclude-agenda-files '("~/Dropbox/org/GTD/archive.org"
                                        "~/Dropbox/org/GTD/suspend.org"
                                        ))
(loop for i in org-agenda-exclude-agenda-files do
      (delete i org-agenda-files))
</p>

<p>
;;;;;;;;;;;;;;
    ;; Org-Latex;;
;;;;;;;;;;;;;;
</p>

<p>
(setq org-preview-latex-default-process 'dvipng)
;; (setq org-preview-latex-default-process 'imagemagick)
(setq org-preview-latex-process-alist
      '(
        (dvipng
         :programs ("latex" "dvipng")
         :description "dvi &gt; png"
         :message "you need to install programs: latex, dvipng and ghostscript."
         :image-input-type "dvi"
         :image-output-type "png"
         :image-size-adjust (1.0 . 1.0)
         :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
         :image-converter ("dvipng -fg %F -bg %B -D %D -T tight -o %O %f"))
        (dvisvgm :programs
                 ("xelatex" "dvisvgm" "convert")
                 :description "xdv &gt; svg"
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
                     :description "pdf &gt; png"
                     :message "you need to install the programs: xelatex and imagemagick."
                     :use-xcolor t
                     :image-input-type "pdf"
                     :image-output-type "png"
                     :image-size-adjust (1.0 . 1.0)
                     :latex-compiler
                     ("xelatex -interaction nonstopmode -output-directory %o %f")
                     :image-converter
                     ("convert -density %D -trim -antialias %f -quality 100 %O"))))
</p>

<p>
;; 安装 XeLaTeX 是另外一个故事了..
(require 'ox-latex)
(setq Tex-command-default "XeLaTeX")
;; (setq org-latex-compiler "xelatex")
</p>


<p>
;;前面的东西必要动
;;org-mode export to latex
(setq org-export-latex-listings t)
</p>

<p>
;;org-mode source code setup in exporting to latex
(add-to-list 'org-latex-listings '("" "listings"))
(add-to-list 'org-latex-listings '("" "color"))
</p>

<p>
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
</p>

<p>
    (add-to-list 'org-latex-classes
                 '("book"
                   "\\documentclass{book}
\\usepackage[slantfont, boldfont]{xeCJK}
% chapter set
\\usepackage{titlesec}
\\usepackage{hyperref}
</p>

<p>
[NO-DEFAULT-PACKAGES]
[PACKAGES]
</p>




<p>
\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}
</p>

<p>
%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}
</p>

<p>
% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
</p>

<p>
% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}
</p>

<p>
[EXTRA]
"
                   ("\\chapter{%s}" . "\\chapter*{%s}")
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
</p>

<p>
    (add-to-list 'org-latex-classes
                 '("article"
                   "\\documentclass{article}
\\usepackage[slantfont, boldfont]{xeCJK}
\\usepackage{titlesec}
\\usepackage{hyperref}
</p>

<p>
[NO-DEFAULT-PACKAGES]
[PACKAGES]
</p>

<p>
\\parindent 2em
</p>


<p>
\\setCJKmainfont{微软雅黑} % 设置缺省中文字体
\\setCJKsansfont{微软雅黑}
\\setCJKmonofont{微软雅黑}
</p>

<p>
\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}
</p>

<p>
%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}
</p>

<p>
% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
</p>

<p>
% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}
</p>

<p>
[EXTRA]
"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
</p>

<p>
    (add-to-list 'org-latex-classes
                 '("beamer"
                   "\\documentclass{beamer}
\\usepackage[slantfont, boldfont]{xeCJK}
% beamer set
\\usepackage[none]{hyphenat}
\\usepackage[abs]{overpic}
</p>

<p>
[NO-DEFAULT-PACKAGES]
[PACKAGES]
</p>

<p>
\\setCJKmainfont{微软雅黑} % 设置缺省中文字体
\\setCJKsansfont{微软雅黑}
\\setCJKmonofont{微软雅黑}
</p>

<p>
\\setmainfont{DejaVu Sans} % 英文衬线字体
\\setsansfont{DejaVu Serif} % 英文无衬线字体
\\setmonofont{DejaVu Sans Mono}
%\\setmainfont{WenQuanYi Micro Hei} % 设置缺省中文字体
%\\setsansfont{WenQuanYi Micro Hei}
%\\setmonofont{WenQuanYi Micro Hei Mono}
</p>

<p>
%如果没有它，会有一些 tex 特殊字符无法正常使用，比如连字符。
\\defaultfontfeatures{Mapping=tex-text}
</p>

<p>
% 中文断行
\\XeTeXlinebreaklocale \"zh\"
\\XeTeXlinebreakskip = 0pt plus 1pt minus 0.1pt
</p>

<p>
% 代码设置
\\lstset{numbers=left,
numberstyle= \\tiny,
keywordstyle= \\color{ blue!70},commentstyle=\\color{red!50!green!50!blue!50},
frame=shadowbox,
breaklines=true,
rulesepcolor= \\color{ red!20!green!20!blue!20}
}
</p>

<p>
[EXTRA]
"
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))
</p>

<p>
(setq org-latex-pdf-process
      '("xelatex -interaction nonstopmode -output-directory %o %f"
        ;;"biber %b" "xelatex -interaction nonstopmode -output-directory %o %f"
        "bibtex %b"
        "xelatex -interaction nonstopmode -output-directory %o %f"
        "xelatex -interaction nonstopmode -output-directory %o %f"))
</p>

<p>
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
</p>

<p>
;; (with-eval-after-load 'org-agenda
;;   (require 'org-projectile)
;;   (mapcar '(lambda (file)
;;              (when (file-exists-p file)
;;                (push file org-agenda-files)))
;;           (org-projectile-todo-files)))
</p>

<p>
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
</p>




<p>
;;;;;;;;;;;;;;
  ;;  Ox-Org  ;;
;;;;;;;;;;;;;;
  (with-eval-after-load 'ox
    (require 'ox-hugo))
  ;; (require 'ox-hugo-auto-export)
  ;;deft
</p>

<p>
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
(global-set-key [f8] 'deft)
(global-set-key [C-f8] 'ironman-deft-search-for)
;; (setq deft-strip-title-regexp "")
(defun ironman-deft-search-for(filter)
  (interactive "MFilter: ")
  (spacemacs/deft)
  (deft-filter filter t)
  )
</p>

<p>
;; 功能重复，real-auto-save 就可以了
(setq deft-auto-save-interval 9999)
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
</p>



<p>
;;;;;;;;;;;;;;
                                        ;  bookmarks ;
;;;;;;;;;;;;;;
  (setq bookmark-default-file "~/.spacemacs.d/other<sub>file</sub>/bookmarks")
</p>


<p>
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
;;init-pdf
(require 'pdf-tools-extension)
(setq pdf-info-epdfinfo-program '"c:/users/xx299/.spacemacs.d/pdf-tools-20190413.2018/epdfinfo.exe")
(add-hook 'pdf-view-mode-hook 'pdf-tools-enable-minor-modes)
(setq org-noter-notes-search-path '("c:/Users/xx299/Dropbox/org/Notes"))
(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
(define-key pdf-view-mode-map (kbd "e") 'pdf-view-scroll-down-or-previous-page)
;;init-epub
;; epub 打不开问题
(require 'nov)
(with-eval-after-load "nov"
  (when (string-equal system-type "windows-nt")
    (setq process-coding-system-alist
          (cons `(,nov-unzip-program . (gbk . gbk))
                process-coding-system-alist))))
</p>

<p>
(define-key nov-mode-map (kbd "e") 'nov-scroll-down)
</p>

<p>
;;;;;;;;;;;;;;
;;;  other ;;;
;;;;;;;;;;;;;;
</p>

<p>
;; (setq projectile-git-submodule-command nil) ;; 速度Git速度慢的问题
(setq large-file-warning-threshold nil)
(setq treemacs-filewatch-mode t)      ;
(setq treemacs-file-event-delay 1000)
(setq treemacs-use-collapsed-directories 3)
;; block the ".#" file generate <a href="https://www.gnu.org/software/emacs/manual/html_node/emacs/Interlocking.html#Interlocking">https://www.gnu.org/software/emacs/manual/html_node/emacs/Interlocking.html#Interlocking</a>
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
</p>

<p>
;; (setq adaptive-fill-first-line-regexp "^\\* *$")
;; (setq adaptive-fill-first-line-regexp "")
</p>

<p>
;; Anki a problem
(setq request-curl "C:\\tools\\msys2\\usr\\bin\\curl.exe")
</p>

<p>
(setq request-log-level 'debug)
</p>

<p>
(add-to-list `yas-snippet-dirs
             "~/.spacemacs.d/snippets" ;; personal snippets
             ;; "<i>path/to/some/collection</i>"           ;; foo-mode and bar-mode snippet collection
             ;; "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
             )
</p>

<p>
(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
</p>

<p>
;; 编码问题
</p>

<p>
(when (eq system-type 'windows-nt)
  (setq locale-coding-system 'gb18030)  ;此句保证中文字体设置有效
  (setq w32-unicode-filenames 'nil)       ; 确保file-name-coding-system变量的设置不会无效
  (setq file-name-coding-system 'gb18030) ; 设置文件名的编码为gb18030
  )
</p>

<p>
(setq-default message-draft-coding-system 'utf-8)
</p>

<p>
(set-language-environment 'utf-8)
</p>


<p>
;; (setq-default nnheader-pathname-coding-system 'gbk)
;; (setq-default nnmail-pathname-coding-system 'gbk)
;; set coding config, last is highest priority.
;; <a href="https://www.gnu.org/software/emacs/manual/html_node/emacs/Recognize-Coding.html#Recognize-Coding">https://www.gnu.org/software/emacs/manual/html_node/emacs/Recognize-Coding.html#Recognize-Coding</a>
(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'cp936)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8-dos)
(prefer-coding-system 'utf-8-unix)
;; (set-language-environment 'Chinese-GB18030)
</p>



<p>
;;init-help
(define-key help-mode-map (kbd "u") 'evil-scroll-up)
(define-key help-mode-map (kbd "d") 'evil-scroll-down)
(define-key help-mode-map (kbd "C-s") 'helm-swoop)
</p>


<p>
;;-------&#x2013;&#x2014;end-----------&#x2013;&#x2014;;;
</p>

<p>
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
   '(custom-enabled-themes (quote (spacemacs-dark)))
   '(custom-safe-themes
     (quote
      ("a0feb1322de9e26a4d209d1cfa236deaf64662bb604fa513cca6a057ddf0ef64" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "2540689fd0bc5d74c4682764ff6c94057ba8061a98be5dd21116bf7bf301acfb" "ab2cbf30ab758c5e936b527377d543ce4927001742f79519b62c45ba9dd9f55e" "66f32da4e185defe7127e0dc8b779af99c00b60c751b0662276acaea985e2721" "e11880d349e5b3f3d47e5bd6f7d9ff773ab6301e124ec7dbbbfbba5fb8482390" "9c27124b3a653d43b3ffa088cd092c34f3f82296cf0d5d4f719c0c0817e1afa6" "89536596ee5bdc5ef9ea3d3d5b515ea616285fa9274c836263024f1993f6b3dd" "801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "341b2570a9bbfc1817074e3fad96a7eff06a75d8e2362c76a2c348d0e0877f31" "8a97050c9dd0af1cd8c3290b061f4b6032ccf2044ddc4d3c2c39e516239b2463" "72085337718a3a9b4a7d8857079aa1144ea42d07a4a7696f86627e46ac52f50b" "8dce5b23232d0a490f16d62112d3abff6babeef86ae3853241a85856f9b0a6e7" "450f3382907de50be905ae8a242ecede05ea9b858a8ed3cc8d1fbdf2d57090af" "4138944fbed88c047c9973f68908b36b4153646a045648a22083bd622d1e636d" "1dd7b369ab51f00e91b6a990634017916e7bdeb64002b4dda0d7a618785725ac" "621595cbf6c622556432e881945dda779528e48bb57107b65d428e61a8bb7955" "cd7ffd461946d2a644af8013d529870ea0761dccec33ac5c51a7aaeadec861c2" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" default)))
   '(diary-entry-marker (quote font-lock-variable-name-face))
   '(emms-mode-line-icon-image-cache
     (quote
      (image :type xpm :ascent center :data "<i>* XPM *</i>
static char <b>note[] = {
/</b> width height num<sub>colors</sub> chars<sub>per</sub><sub>pixel</sub> */
\"    10   11        2            1\",
<i>* colors *</i>
\". c #1fb3b3\",
\"# c None s None\",
<i>* pixels *</i>
\"###&#x2026;####\",
\"###.#&#x2026;##\",
\"###.###&#x2026;\",
\"###.#####.\",
\"###.#####.\",
\"#&#x2026;#####.\",
\"&#x2026;.#####.\",
\"#..######.\",
\"#######&#x2026;\",
\"######&#x2026;.\",
\"#######..#\" };")))
   '(evil-want-Y-yank-to-eol nil)
   '(fci-rule-character-color "#192028")
   '(fci-rule-color "#56697A")
   '(gnus-logo-colors (quote ("#2fdbde" "#c0c0c0")) t)
   '(gnus-mode-line-image-cache
     (quote
      (image :type xpm :ascent center :data "<i>* XPM *</i>
static char <b>gnus-pointer[] = {
/</b> width height num<sub>colors</sub> chars<sub>per</sub><sub>pixel</sub> */
\"    18    13        2            1\",
<i>* colors *</i>
\". c #1fb3b3\",
\"# c None s None\",
<i>* pixels *</i>
\"##################\",
\"######..##..######\",
\"#####&#x2026;&#x2026;..#####\",
\"#.##.##..##&#x2026;####\",
\"#&#x2026;####.###&#x2026;##.\",
\"#..###.######&#x2026;..\",
\"#####.########&#x2026;#\",
\"###########.######\",
\"####.###.#..######\",
\"######..###.######\",
\"###&#x2026;.####.######\",
\"###..######.######\",
\"###########.######\" };")) t)
   '(helm-source-names-using-follow nil)
   '(hl-todo-keyword-faces
     (quote
      (("TODO" . "#dc752f")
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
       ("\\?\\?\\?+" . "#dc752f"))))
   '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
   '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
   '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
   '(nrepl-message-colors
     (quote
      ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
   '(objed-cursor-color "#D95468")
   '(org-agenda-files
     (quote
      ("~/Dropbox/org/Notes/TODOs.org" "~/Dropbox/org/GTD/TODOs.org" "~/Dropbox/org/GTD/friends.org" "~/Dropbox/org/Notes/TODOs.org" "~/Dropbox/org/GTD/TODOs.org" "~/Dropbox/org/GTD/TODOs.org" "~/Dropbox/org/Notes/TODOs.org" "~/Dropbox/org/GTD/TODOs.org" "~/Dropbox/org/Notes/TODOs.org" "c:/Users/xx299/Dropbox/org/GTD/GTD<sub>problem.org</sub>" "c:/Users/xx299/Dropbox/org/GTD/Journal.org" "c:/Users/xx299/Dropbox/org/GTD/TODOs.org" "c:/Users/xx299/Dropbox/org/GTD/calendar.org" "c:/Users/xx299/Dropbox/org/GTD/ideas.org" "c:/Users/xx299/Dropbox/org/GTD/task.org")))
   '(org-deadline-warning-days 0)
   '(package-selected-packages
     (quote
      (org-wild-notifier org-noter toml-mode racer flycheck-rust dap-mode bui tree-mode lsp-mode cargo org-ref key-chord helm-bibtex parsebib biblio biblio-core tern nodejs-repl livid-mode skewer-mode js2-refactor multiple-cursors js2-mode js-doc import-js grizzl add-node-modules-path emojify emoji-cheat-sheet-plus company-emoji powershell helm-gtags helm helm-core ggtags counsel-gtags rust-mode wgrep smex ivy-xref ivy-purpose ivy-hydra counsel-projectile counsel-css counsel swiper ivy pdf-tools tablist ox-gfm org-re-reveal youdao-dictionary yapfify ws-butler writeroom-mode winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package treemacs-projectile treemacs-evil toc-org symon symbol-overlay string-inflection spaceline-all-the-icons smeargle restart-emacs ranger rainbow-delimiters pytest pyim pyenv-mode py-isort popwin pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox pangu-spacing pandoc-mode ox-pandoc ox-hugo ox-epub overseer orgit org-sticky-header org-projectile org-present org-pomodoro org-mime org-journal org-download org-cliplink org-bullets org-brain open-junk-file nameless move-text mmm-mode markdown-toc magit-svn magit-gitflow macrostep lorem-ipsum live-py-mode link-hint indent-guide importmagic hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-mode-manager helm-make helm-gitignore helm-git-grep helm-flx helm-descbinds helm-ag google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md font-lock+ focus flycheck-package flx-ido find-by-pinyin-dired fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish devdocs define-word cython-mode column-enforce-mode cnfonts clean-aindent-mode chinese-conv centered-cursor-mode blacken auto-highlight-symbol auto-compile auctex-latexmk anaconda-mode aggressive-indent ace-pinyin ace-link ace-jump-helm-line)))
   '(pdf-view-midnight-colors (quote ("#655370" . "#fbf8ef")))
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
</p>
</body>
</html>
</richcontent>
</node>
</map>
