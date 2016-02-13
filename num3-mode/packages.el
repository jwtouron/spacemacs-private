(defconst num3-mode-packages
  '(num3-mode))

(defun num3-mode/init-num3-mode ()
  (when (eq (configuration-layer/package-usedp 'num3-mode) 'num3-mode)
    (use-package num3-mode
      :defer t)))

(defun num3-mode/post-init-num3-mode ()
  (spacemacs/set-leader-keys "otn" 'num3-mode))
