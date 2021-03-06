; Gets the title of a website.
(define (get-url-title url)
  (setq text (get-url url) $1 nil)
  (regex {(?i:<TITLE>(.*?)</title>)} text)
  $1)

(while true
  (print "Enter URL: ")
  (setq url (read-line))
  (println (get-url-title url)))
