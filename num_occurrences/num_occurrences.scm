(define (num-occurrences seq eq?)
    (map (lambda (x)
        (apply +
            (map (lambda (z)
                (if (eq? x z) 1
                 0
                )
            )seq)
        )
    )seq)
)