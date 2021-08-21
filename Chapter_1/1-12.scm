(define (pascal-triangle-element h w)
  (cond ((or (< h 1) (< w 1) (> w h)) 0)
	((or (= w 1) (= w h)) 1)
	(else (+ (pascal-triangle-element (- h 1) (- w 1))
		 (pascal-triangle-element (- h 1) w))))
  )
    
