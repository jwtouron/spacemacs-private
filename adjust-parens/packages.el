(defconst adjust-parens-packages
  '(adjust-parens))

(defun adjust-parens/init-adjust-parens ()
  (when (eq (configuration-layer/package-usedp 'adjust-parens) 'adjust-parens)
    (use-package adjust-parens
      :defer t
      :commands adjust-parens-mode)))
