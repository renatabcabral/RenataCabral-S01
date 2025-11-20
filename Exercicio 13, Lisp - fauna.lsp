(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(setq catalogo
      (list
       (make-criatura :nome "Bladderfish"
                      :ambiente "Safe Shallows"
                      :periculosidade "Baixa"
                      :vida-media 5)

       (make-criatura :nome "Reaper Leviathan"
                      :ambiente "Open Ocean"
                      :periculosidade "Alta"
                      :vida-media 45)

       (make-criatura :nome "Ghost Leviathan Juvenile"
                      :ambiente "Deep"
                      :periculosidade "Alta"
                      :vida-media 80)

       (make-criatura :nome "Crab Squid"
                      :ambiente "Deep"
                      :periculosidade "Media"
                      :vida-media 30)))


(defun filtra-por-perigo (catalogo)
  (remove-if (lambda (c)
               (string= (criatura-periculosidade c) "Baixa"))
             catalogo))

(defun relatorio-profundidade (catalogo)
  (let ((deep-only
         (remove-if-not
          (lambda (c)
            (string= (criatura-ambiente c) "Deep"))
          catalogo)))
    (mapcar
     (lambda (c)
       (format nil "[~a]: Vive em ~a"
               (criatura-nome c)
               (criatura-ambiente c)))
     deep-only)))


(format t "~%Criaturas perigosas: ~a"
        (filtra-por-perigo catalogo))

(format t "~%Relatorio Deep: ~a"
        (relatorio-profundidade catalogo))
