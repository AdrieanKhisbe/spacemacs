;;; config.el --- UI keybindings File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(spacemacs|define-transient-state theme
  :title "Themes Transient State"
  :doc "\n[_p_/_<left>_] cycles backward,  [_n_/_<right>_] cycles forward"
  :bindings
  ("n" spacemacs/cycle-spacemacs-theme)
  ("p" (lambda()(interactive)(spacemacs/cycle-spacemacs-theme t)))
  ("<left>" (lambda()(interactive)(spacemacs/cycle-spacemacs-theme t)))
  ("<right>" spacemacs/cycle-spacemacs-theme))
