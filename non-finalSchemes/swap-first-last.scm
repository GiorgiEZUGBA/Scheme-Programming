(define (swap-first-last lst)
    (let ((x (car (reverse lst))))
        (cons x (cdr (reverse (cons (car lst) (cdr (reverse lst))))))
    )
)

(define (reverse-middle lst)
    (reverse(swap-first-last lst))
)

(define (list-head lst k)
    (if (or (null? lst) (zero? k)) '()
        (cons (car lst) (list-head (cdr lst) (- k 1)))
    )
)

(define (sum-adjusment-elements lst)
    (if (< (length lst) 2) '()
        (cons (+ (car lst) (cadr lst)) (sum-adjusment-elements (cdr lst)))
    )
)

(define (gcd x y)
    (if (zero? y) x
        (gcd y (remainder x y))
    )
)

;Get Index Dasaweria

(define (swap lst i j)
    (let ((x (get_index lst i)) (y (get_index lst j)))
        (let loop ((curr-lst lst) (idx 0))
            (cond ((null?   curr-lst) '())
                ((= idx i) (cons x (loop (cdr curr-lst) (+ idx 1))))
                ((= idx j) (cons y (loop (cdr curr-lst) (+ idx 1))))
                (else (cons (car curr-lst) (loop (cdr curr-lst) (+ idx 1))))
            )
        )
    )
)