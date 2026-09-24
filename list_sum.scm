

(define (sum_integers fst snd rem)
    (cond ((and (null? fst) (null? snd) (= rem 0)) '())
        ((and (null? fst) (null? snd)) (list rem))
        ((null? fst) (cons (remainder (+ 0 (car snd) rem) 10) (sum_integers '() (cdr snd) (quotient (+ 0 (car snd) rem) 10))))
        ((null? snd) (cons (remainder (+ 0 (car fst) rem) 10) (sum_integers (cdr fst) '() (quotient (+ 0 (car fst) rem) 10))))
        (else (cons (remainder (+ (car fst) (car snd) rem) 10) (sum_integers (cdr fst) (cdr snd) (quotient (+ (car fst) (car snd) rem) 10))) )
    )
)

(define (sum l)
	(if (= (length l) 2) (reverse(sum_integers (reverse (car l)) (reverse (cadr l)) 0))
        (reverse(sum_integers (reverse(car l)) (reverse (sum (cdr l))) 0))
    )
)



;; !!!ამ ხაზის ქვემოთ არაფერი შეცვალოთ!!!

;; 1
(display (if (equal? (sum '((1 2)
			    (5 3)))
		     '(6 5)) "1 SUCCESS" "1 FAILURE"))(newline)
;; 2
(display (if (equal? (sum '((6 3)
			    (5 9)))
		     '(1 2 2)) "2 SUCCESS" "2 FAILURE"))(newline)
;; 3
(display (if (equal? (sum '((1 2 3)
			    (3 1 4)
			    (1 0 1)))
		     '(5 3 8)) "3 SUCCESS" "3 FAILURE"))(newline)
;; 4
(display (if (equal? (sum '((8 7 2 3 6 1)
			    (1 0 3 5 0 0)
			    (3 4 0 0 1 6)
			    (6 2 6 1 1 5)))
		     '(1 9 4 1 9 9 2)) "4 SUCCESS" "4 FAILURE"))(newline)
