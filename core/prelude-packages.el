;;; prelude-packages.el --- Emacs Prelude: default package selection.
;;
;; Copyright © 2011-2016 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude
;; Version: 1.0.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Takes care of the automatic installation of all the packages required by
;; Emacs Prelude.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; set package-user-dir to be relative to Prelude install path
(setq package-user-dir (expand-file-name "elpa" prelude-dir))
(package-initialize)

(defvar prelude-packages
  '(ace-window
    avy
    anzu
    beacon
    browse-kill-ring
    crux
    dash
    discover-my-major
    diff-hl
    diminish
    easy-kill
    epl
    expand-region
    flycheck
    gist
    git-timemachine
    gitconfig-mode
    gitignore-mode
    god-mode
    grizzl
    guru-mode
    imenu-anywhere
    ov
    projectile
    magit
    move-text
    operate-on-number
    smart-mode-line
    smartparens
    smartrep
    undo-tree
    volatile-highlights
    which-key
    zenburn-theme
    zop-to-char)
  "A list of packages to ensure are installed at launch.")

(setq package-pinned-packages
      '(
        (ace-window . "melpa-stable")
        (alchemist . "melpa-stable")
        (anaconda-mode . "melpa-stable")
        (anzu . "melpa-stable")
        (async . "melpa-stable")
        ;(auctex . "melpa-stable")
        (avy . "melpa-stable")
        ;(beacon . "melpa-stable") ; NOPE
        (browse-kill-ring . "melpa-stable")
        (caml . "melpa-stable")
        (cask-mode . "melpa-stable")
        (cdlatex . "melpa-stable")
        (cider . "melpa-stable")
        (clojure-mode . "melpa-stable")
        (cmake-mode . "melpa-stable")
        (coffee-mode . "melpa-stable")
        (company . "melpa-stable")
        (company-anaconda . "melpa-stable")
        (company-auctex . "melpa-stable")
        (company-go . "melpa-stable")
        (crux . "melpa-stable")
        ;(css-mode . "melpa-stable")
        ;(csv-mode . "melpa-stable")
        (cython-mode . "melpa-stable")
        (d-mode . "melpa-stable")
        (dart-mode . "melpa-stable")
        (dash . "melpa-stable")
        (diff-hl . "melpa-stable")
        (diminish . "melpa-stable")
        (discover-my-major . "melpa-stable")
        (dockerfile-mode . "melpa-stable")
        (easy-kill . "melpa-stable")
        (elisp-slime-nav . "melpa-stable")
        (elixir-mode . "melpa-stable")
        (elm-mode . "melpa-stable")
        (ensime . "melpa-stable")
        (epl . "melpa-stable")
        (erlang . "melpa-stable")
        (evil . "melpa-stable")
        (evil-numbers . "melpa-stable")
        (evil-surround . "melpa-stable")
        (evil-visualstar . "melpa-stable")
        (exec-path-from-shell . "melpa-stable")
        (expand-region . "melpa-stable")
        (f . "melpa-stable")
        (feature-mode . "melpa-stable")
        (flx . "melpa-stable")
        (flx-ido . "melpa-stable")
        (flycheck . "melpa-stable")
        (flycheck-ocaml . "melpa-stable")
        (geiser . "melpa-stable")
        (gh . "melpa-stable")
        (gist . "melpa-stable")
        (git-commit . "melpa-stable")
        (git-timemachine . "melpa-stable")
        (gitconfig-mode . "melpa-stable")
        (gitignore-mode . "melpa-stable")
        (go-eldoc . "melpa-stable")
        (go-guru . "melpa-stable")
        (go-mode . "melpa-stable")
        (go-projectile . "melpa-stable")
        (go-rename . "melpa-stable")
        ;(god-mode . "melpa-stable") ; NOPE
        (gotest . "melpa-stable")
        (goto-chg . "melpa-stable")
        (grizzl . "melpa-stable")
        (groovy-mode . "melpa-stable")
        (guru-mode . "melpa-stable")
        (haml-mode . "melpa-stable")
        (haskell-mode . "melpa-stable")
        (helm . "melpa-stable")
        (helm-ag . "melpa-stable")
        (helm-core . "melpa-stable")
        (helm-descbinds . "melpa-stable")
        (helm-projectile . "melpa-stable")
        (ido-completing-read+ . "melpa-stable")
        (ido-ubiquitous . "melpa-stable")
        (imenu-anywhere . "melpa-stable")
        (inf-ruby . "melpa-stable")
        (js2-mode . "melpa-stable")
        (json-mode . "melpa-stable")
        (json-reformat . "melpa-stable")
        (json-snatcher . "melpa-stable")
        ;(key-chord . "melpa-stable") ; NOPE
        (kivy-mode . "melpa-stable")
        ;(kotlin-mode . "melpa-stable")
        (less-css-mode . "melpa-stable")
        ;(let-alist . "melpa-stable") ; NOPE
        (logito . "melpa-stable")
        (lua-mode . "melpa-stable")
        (macrostep . "melpa-stable")
        (magit . "melpa-stable")
        (magit-popup . "melpa-stable")
        (makey . "melpa-stable")
        (markdown-mode . "melpa-stable")
        (marshal . "melpa-stable")
        (mediawiki . "melpa-stable")
        (merlin . "melpa-stable")
        ;(move-text . "melpa-stable") ; NOPE
        (operate-on-number . "melpa-stable")
        (ov . "melpa-stable")
        (pcache . "melpa-stable")
        (php-mode . "melpa-stable")
        (pkg-info . "melpa-stable")
        (pkgbuild-mode . "melpa-stable")
        (popup . "melpa-stable")
        (projectile . "melpa-stable")
        (protobuf-mode . "melpa-stable")
        (puppet-mode . "melpa-stable")
        (pythonic . "melpa-stable")
        (queue . "melpa-stable")
        (rainbow-delimiters . "melpa-stable")
        (rainbow-mode . "melpa-stable")
        (rich-minority . "melpa-stable")
        (ruby-tools . "melpa-stable")
        ;(rust-mode . "melpa-stable")
        (s . "melpa-stable")
        (sass-mode . "melpa-stable")
        (sbt-mode . "melpa-stable")
        (scala-mode . "melpa-stable")
        (scss-mode . "melpa-stable")
        ;(seq . "melpa-stable") ; NOPE
        (slim-mode . "melpa-stable")
        (slime . "melpa-stable")
        (smart-mode-line . "melpa-stable")
        (smartparens . "melpa-stable")
        (smartrep . "melpa-stable")
        (smex . "melpa-stable")
        (spinner . "melpa-stable")
        (stylus-mode . "melpa-stable")
        (swift-mode . "melpa-stable")
        ;(textile-mode . "melpa-stable")
        (thrift . "melpa-stable")
        (tuareg . "melpa-stable")
        ;(undo-tree . "melpa-stable") ; NOPE
        (utop . "melpa-stable")
        ;(vkill . "melpa-stable") ; NOPE
        (volatile-highlights . "melpa-stable")
        (web-mode . "melpa-stable")
        (which-key . "melpa-stable")
        (with-editor . "melpa-stable")
        (yaml-mode . "melpa-stable")
        (yari . "melpa-stable")
        (yasnippet . "melpa-stable")
        (zenburn-theme . "melpa-stable")
        (zop-to-char . "melpa-stable")
        ))

(defun prelude-packages-installed-p ()
  "Check if all packages in `prelude-packages' are installed."
  (every #'package-installed-p prelude-packages))

(defun prelude-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package prelude-packages)
    (add-to-list 'prelude-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun prelude-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'prelude-require-package packages))

(define-obsolete-function-alias 'prelude-ensure-module-deps 'prelude-require-packages)

(defun prelude-install-packages ()
  "Install all packages listed in `prelude-packages'."
  (unless (prelude-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs Prelude is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (prelude-require-packages prelude-packages)))

;; run package installation
(prelude-install-packages)

(defun prelude-list-foreign-packages ()
  "Browse third-party packages not bundled with Prelude.

Behaves similarly to `package-list-packages', but shows only the packages that
are installed and are not in `prelude-packages'.  Useful for
removing unwanted packages."
  (interactive)
  (package-show-package-list
   (set-difference package-activated-list prelude-packages)))

(defmacro prelude-auto-install (extension package mode)
  "When file with EXTENSION is opened triggers auto-install of PACKAGE.
PACKAGE is installed only if not already present.  The file is opened in MODE."
  `(add-to-list 'auto-mode-alist
                `(,extension . (lambda ()
                                 (unless (package-installed-p ',package)
                                   (package-install ',package))
                                 (,mode)))))

(defvar prelude-auto-install-alist
  '(("\\.clj\\'" clojure-mode clojure-mode)
    ("\\.cmake\\'" cmake-mode cmake-mode)
    ("CMakeLists\\.txt\\'" cmake-mode cmake-mode)
    ("\\.coffee\\'" coffee-mode coffee-mode)
    ("\\.css\\'" css-mode css-mode)
    ("\\.csv\\'" csv-mode csv-mode)
    ("Cask" cask-mode cask-mode)
    ("\\.d\\'" d-mode d-mode)
    ("\\.dart\\'" dart-mode dart-mode)
    ("\\.elm\\'" elm-mode elm-mode)
    ("\\.ex\\'" elixir-mode elixir-mode)
    ("\\.exs\\'" elixir-mode elixir-mode)
    ("\\.elixir\\'" elixir-mode elixir-mode)
    ("\\.erl\\'" erlang erlang-mode)
    ("\\.feature\\'" feature-mode feature-mode)
    ("\\.go\\'" go-mode go-mode)
    ("\\.groovy\\'" groovy-mode groovy-mode)
    ("\\.haml\\'" haml-mode haml-mode)
    ("\\.hs\\'" haskell-mode haskell-mode)
    ("\\.json\\'" json-mode json-mode)
    ("\\.kt\\'" kotlin-mode kotlin-mode)
    ("\\.kv\\'" kivy-mode kivy-mode)
    ("\\.latex\\'" auctex LaTeX-mode)
    ("\\.less\\'" less-css-mode less-css-mode)
    ("\\.lua\\'" lua-mode lua-mode)
    ("\\.markdown\\'" markdown-mode markdown-mode)
    ("\\.md\\'" markdown-mode markdown-mode)
    ("\\.ml\\'" tuareg tuareg-mode)
    ("\\.pp\\'" puppet-mode puppet-mode)
    ("\\.php\\'" php-mode php-mode)
    ("\\.proto\\'" protobuf-mode protobuf-mode)
    ("\\.pyd\\'" cython-mode cython-mode)
    ("\\.pyi\\'" cython-mode cython-mode)
    ("\\.pyx\\'" cython-mode cython-mode)
    ("PKGBUILD\\'" pkgbuild-mode pkgbuild-mode)
    ("\\.rs\\'" rust-mode rust-mode)
    ("\\.sass\\'" sass-mode sass-mode)
    ("\\.scala\\'" scala-mode scala-mode)
    ("\\.scss\\'" scss-mode scss-mode)
    ("\\.slim\\'" slim-mode slim-mode)
    ("\\.styl\\'" stylus-mode stylus-mode)
    ("\\.swift\\'" swift-mode swift-mode)
    ("\\.textile\\'" textile-mode textile-mode)
    ("\\.thrift\\'" thrift thrift-mode)
    ("\\.yml\\'" yaml-mode yaml-mode)
    ("\\.yaml\\'" yaml-mode yaml-mode)
    ("Dockerfile\\'" dockerfile-mode dockerfile-mode)))

;; markdown-mode doesn't have autoloads for the auto-mode-alist
;; so we add them manually if it's already installed
(when (package-installed-p 'markdown-mode)
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode)))

(when (package-installed-p 'pkgbuild-mode)
  (add-to-list 'auto-mode-alist '("PKGBUILD\\'" . pkgbuild-mode)))

;; build auto-install mappings
(mapc
 (lambda (entry)
   (let ((extension (car entry))
         (package (cadr entry))
         (mode (cadr (cdr entry))))
     (unless (package-installed-p package)
       (prelude-auto-install extension package mode))))
 prelude-auto-install-alist)

(provide 'prelude-packages)
;; Local Variables:
;; byte-compile-warnings: (not cl-functions)
;; End:

;;; prelude-packages.el ends here
