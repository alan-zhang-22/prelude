;; install ob-julia-vterm
(use-package ob-julia-vterm
  :ensure t)

;; You need to enable julia-vterm code block evaluation by adding the following lines to your init file.
(require 'org)
(add-to-list 'org-babel-load-languages '(julia-vterm . t))
(org-babel-do-load-languages 'org-babel-load-languages org-babel-load-languages)

;; By default, you need to specify julia-vterm as the language name for source blocks. To use julia as the language name, define the following aliases.
(defalias 'org-babel-execute:julia 'org-babel-execute:julia-vterm)
(defalias 'org-babel-variable-assignments:julia 'org-babel-variable-assignments:julia-vterm)
