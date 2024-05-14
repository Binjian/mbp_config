;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;; (package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;; (package! another-package
;;   :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;; (package! this-package
;;   :recipe (:host github :repo "username/repo"
;;            :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;; (package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;; (package! builtin-package :recipe (:nonrecursive t))
;; (package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;; (package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;; (package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;; (unpin! pinned-package)
;; ...or multiple packages
;; (unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;; (unpin! t)

;;(unpin! org-roam comapny-org-roam)

;;(package! company-org-roam
;;  :recipe (:host github :repo "jethrokuan/company-org-roam"))


;;(add-to-list 'package-archives '( "jcs-elpa" . "https://jcs-emacs.github.io/jcs-elpa/packages/") t)

(package! buffer-move)
(package! websocket)
(package! org-roam-ui
  :recipe (:host github :repo "org-roam/org-roam-ui" :files ("*.el" "out")))
(package! go-translate)
(package! markdown-preview-eww)

;;(package! zmq)

(package! nov)
(package! org-download)
(package! org-super-agenda)
;;(package! ox-jira)
(package! org-jira)
;;(package! org-brain)
;;(package! polymode)
(package! grip-mode)

(package! gitconfig-mode
  :recipe (:host github :repo "magit/git-modes"
	   :files ("gitconfig-mode.el")))
(package! gitignore-mode
  :recipe (:host github :repo "magit/git-modes"
	   :files ("gitignore-mode.el")))

(package! markdown-preview-eww)

(package! highlight-indent-guides)


(package! blacken)

(package! logview)

(package! clippy)

;;(package! beacon)

(package! focus)

(package! impatient-mode)

(package! python-black)

(package! lsp-treemacs)

(package! lsp-origami)

(package! ob-mermaid)
;;(package! org-mind-map)

(package! org-reveal)
;;(package! ox-reveal)

(package! ox-gfm)
(package! simple-httpd)

(package! atomic-chrome)

(package! json-mode)
(package! csv-mode)

(package! simple-httpd)
(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))

(package! flycheck)

(package! multi-term)

(package! websocket)
(package! simple-httpd)
(package! zmq)

(package! org-download)

;;(package! rime)

(package! company-box)

(package! add-node-modules-path)

(package! svg-clock)

;;(package! jupyter)

;;(package! openai
;;  :recipe (:host github :repo "emacs-openai/openai"))

;;(package! chatgpt
;;  :recipe (:host github :repo "emacs-openai/chatgpt"))

;;(package! codegpt
;;  :recipe (:host github :repo "emacs-openai/codegpt"))

(package! epc)

(package! chatgpt
  :recipe (:host github :repo "joshcho/ChatGPT.el" :files ("dist" "*.el")))


(package! org-ai)
;;(package! zmq)

(package! color-theme-sanityinc-tomorrow)
;;(package! org-excalidraw)
(package! org-excalidraw
  :recipe (:host github :repo "wdavew/org-excalidraw"))

;; remove cl warning on emacs startup
;; (package! cl-libify)
;;(package! latex-preview-pane)

(package! org-ql
  :recipe (:host github :repo "alphapapa/org-ql"))


(package! helm-org-ql
  :recipe (:host github :repo "alphapapa/org-ql" :files ("helm-org-ql.el")))

;;(package! all-the-icons)
;;(package! eaf-all-the-icons)

(add-hook 'TeX-mode-hook
          (lambda ()
            (add-to-list 'TeX-output-view-style
                         '("^pdf$" "."
                           "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %b")))
          )

;; Use PDF mode by default
(setq-default TeX-PDF-mode t)
;; Make emacs aware of multi-file projects
(setq-default TeX-master nil)

;;(package! emacs-application-framework
;;  :recipe (:host github :repo "emacs-eaf/emacs-application-framework"
;;           :files ("*.el" "*.py" "app" "core")
;;           :build (:not compile)))
;;
;;(package! ctable :recipe (:host github :repo "kiwanami/emacs-ctable"))
;;(package! deferred :recipe (:host github :repo "kiwanami/emacs-deferred"))
;;(package! epc :recipe (:host github :repo "kiwanami/emacs-epc"))

(package! org-preview-html)
;;  :recipe (:host github :repo "jakebox/org-preview-html"))
(package! org-cv
  :recipe (:host github
           :repo "Binjian/org-cv"))

;;(package! ox-moderncv)
;;(package! ox-altacv)
;;(package! ox-hugocv)

;;(when (package! org)
;;  package! ox-awesomecv)

;;(package! elfeed)
;;(package! elfeed-org)
;;(package! elfeed-score)
(package! org-ref)
(package! org-roam-bibtex)

;;(package! rka-academic
;;  :recipe (:host nil :repo "https://gist.github.com/Binjian/123b7c2c1cf5f2ae6557ceda2f0efe04"))
