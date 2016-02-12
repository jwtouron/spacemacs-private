(defconst beacon-packages
  '(beacon))

(defun beacon/init-beacon ()
  (when (eq (configuration-layer/package-usedp 'beacon) 'beacon)
    (use-package beacon
      :defer 1
      :config (beacon-mode 1))))
