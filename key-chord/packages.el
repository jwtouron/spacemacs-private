(defconst key-chord-packages
  '(key-chord))

(defun key-chord/init-key-chord ()
  (when (eq (configuration-layer/package-usedp 'key-chord) 'key-chord)
    (use-package key-chord
      :defer 1
      :config (key-chord-mode 13))))

(defun key-chord/post-init-key-chord ()
  (key-chord-define-global "jj" 'avy-goto-char-timer))
