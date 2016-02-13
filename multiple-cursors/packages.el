(defconst multiple-cursors-packages
  '(multiple-cursors))

(defun multiple-cursors/init-multiple-cursors ()
  (when (eq (configuration-layer/package-usedp 'multiple-cursors) 'multiple-cursors)
    (use-package multiple-cursors
      :defer t)))

(defun multiple-cursors/post-init-multiple-cursors ()
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))
