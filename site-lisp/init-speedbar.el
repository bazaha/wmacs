;;; init-speedbar.el --- Init speedbar

;; Filename: init-speedbar.el
;; Description: Init speedbar
;; Author: Andy Stewart <andy@freedom>
;; Maintainer: Andy Stewart <andy@freedom>
;; Copyright (C) 2013, Andy Stewart, all rights reserved.
;; Created: 2013-12-30 15:49:35
;; Version: 0.1
;; Last-Updated: 2013-12-30 15:49:35
;;           By: Andy Stewart
;; URL: http://www.emacswiki.org/emacs/download/init-speedbar.el
;; Keywords: 
;; Compatibility: GNU Emacs 24.3.50.1
;;
;; Features that might be required by this library:
;;
;; 
;;

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Commentary: 
;; 
;; Init speedbar
;; 

;;; Installation:
;;
;; Put init-speedbar.el to your load-path.
;; The load-path is usually ~/elisp/.
;; It's set in your ~/.emacs like this:
;; (add-to-list 'load-path (expand-file-name "~/elisp"))
;;
;; And the following to your ~/.emacs startup file.
;;
;; (require 'init-speedbar)
;;
;; No need more.

;;; Customize:
;;
;; 
;;
;; All of the above can customize by:
;;      M-x customize-group RET init-speedbar RET
;;

;;; Change log:
;;	
;; 2013/12/30
;;      * First released.
;; 

;;; Acknowledgements:
;;
;; 
;;

;;; TODO
;;
;; 
;;

;;; Require

(require 'speedbar)
(require 'sr-speedbar)

;;; Code:

(setq speedbar-show-unknown-files t)
(setq sr-speedbar-skip-other-window-p t)
(setq sr-speedbar-right-side nil)
;(setq speedbar-buffers-key-map nil)
;(setq speedbar-file-key-map nil)
;(setq sr-speedbar-delete-windows t)
;(setq sr-speedbar-auto-refresh nil)

(add-hook 'speedbar-load-hook
          (lambda () (require 'semantic/sb)))

(global-set-key (kbd "<f11>") 'sr-speedbar-select-window)
(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)

(provide 'init-speedbar)

;;; init-speedbar.el ends here
