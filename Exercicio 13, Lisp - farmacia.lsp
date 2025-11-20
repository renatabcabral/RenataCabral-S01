(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5) (< peso-kg 20)) 10)
    ((and (>= idade-anos 5) (<= idade-anos 12) (>= peso-kg 20)) 25)
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string= nome-da-erva "Ginseng") (* preco-base 3.0))
    ((string= nome-da-erva "Lotus")   (* preco-base 1.5))
    (t preco-base)))


(defun calcula-preco-final (peso-kg idade-anos preco-base nome-da-erva)
  (let* ((dosagem (calcula-dosagem peso-kg idade-anos))
         (preco-ajustado (ajusta-preco preco-base nome-da-erva)))
    (* dosagem preco-ajustado)))

(format t "~%Teste 1 (caso pedido): ~a"
        (calcula-preco-final 60 14 10 "Lotus"))

(format t "~%Teste 2 (crianca pequena): ~a"
        (calcula-preco-final 15 3 10 "Ginseng"))

(format t "~%Teste 3 (5-12 anos): ~a"
        (calcula-preco-final 25 10 10 "Lotus"))

(format t "~%Teste 4 (adulto sem ajuste): ~a"
        (calcula-preco-final 70 30 10 "Alecrim"))
