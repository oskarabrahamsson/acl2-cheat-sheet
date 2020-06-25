(in-package "ACL2")

; just a code snippet

; this definition seems to be convenient, because the prover seems to
; turn (match-list-len '(1 2 3) x) into the facts you want, whereas it
; seems to sometimes get stuck on (equal (len x) 3)
(defun match-list-len (x y)
    (if
        (endp x)
        (endp y)
        (and (consp x) (consp y) (match-list-len (cdr x) (cdr y)))))


