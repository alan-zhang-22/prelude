;;; init-writing.el --- Writing settings.
;;;
;;; code


(defcustom ews-documents-directory
  (concat (file-name-as-directory (getenv "HOME")) "Documents")
  "Location of documents."
  :group 'ews
  :type 'directory)

(defcustom ews-bibliography-directory
  (concat (file-name-as-directory ews-documents-directory) "library")
  "Location of BibTeX bibliographies and attachments."
  :group 'ews
  :type 'directory)

(defcustom ews-notes-directory
  (concat (file-name-as-directory ews-documents-directory) "notes")
  "Location of notes."
  :group 'ews
  :type 'directory)

;; Biblio package for adding BibTeX records and download publications
(use-package biblio
  :ensure t
  )

;; Citar to access bibliographies
(use-package citar
  :ensure t
  :custom
  (org-cite-global-bibliography
   (directory-files ews-bibliography-directory t
                    "^[A-Z|a-z|0-9].+.bib$"))
  (citar-bibliography org-cite-global-bibliography)
  (org-cite-insert-processor 'citar)
  (org-cite-follow-processor 'citar)
  (org-cite-activate-processor 'citar)
  :bind
  (("C-c w c c" . citar-open)
   (:map org-mode-map
         :package org
         ("C-c w C". #'org-cite-insert))))

(provide 'init-writing)

;;; init-writing.el ends here
