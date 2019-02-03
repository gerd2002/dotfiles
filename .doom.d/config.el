;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; fira code is awesome
(setq doom-font (font-spec :family "Fira Code" :size 12)
      doom-theme 'doom-one)

;; fuck "do you really wanna quit" it's annoying af and I generally don't make mistakes with :q
(remove-hook 'kill-emacs-query-functions #'doom-quit-p)
