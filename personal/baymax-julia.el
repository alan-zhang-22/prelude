;; installing emacs-libvterm
(use-package vterm
  :ensure t)

;; julia-mode
(use-package julia-mode
  :ensure t)

;; install julia-vterm
(add-hook 'julia-mode-hook #'julia-vterm-mode)
(setq julia-vterm-repl-program "/opt/local/bin/julia -t 4")
