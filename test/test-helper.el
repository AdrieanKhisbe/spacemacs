;; Spacemacs tests helper

(require 'f)
;; add all to load path
(--each (f-directories "layers"  nil t) (add-to-list 'load-path it))
(--each (f-directories "core"    nil t) (add-to-list 'load-path it))


(require 'undercover)
(undercover "*.el" "core/**/*.el" "layers/**/*.el"
            (:exclude "*-test.el")
            (:report-file "/tmp/undercover-report.json"))

(require 'ert)

(provide 'test-helper)
