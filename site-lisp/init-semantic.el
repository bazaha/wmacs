;; init-hideshow.el Initialization

(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-show-unmatched-syntax-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
;(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
;(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)

(semantic-mode 1)

;(semanticdb-enable-gnu-global-databases 'c-mode t)
;(semanticdb-enable-gnu-global-databases 'c++-mode t)

(provide 'init-semantic)
