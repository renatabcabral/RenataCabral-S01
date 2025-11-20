(defstruct item
  nome
  tipo
  preco
  forca-magica)
  
(setq catalogo
      (list
       (make-item :nome "Lamina Sombria"
                  :tipo "Arma"
                  :preco 200
                  :forca-magica 120)

       (make-item :nome "Punhal Envenenado"
                  :tipo "Arma"
                  :preco 150
                  :forca-magica 60)

       (make-item :nome "Pocao de Sangue"
                  :tipo "Pocao"
                  :preco 80
                  :forca-magica 20)

       (make-item :nome "Orbe do Caos"
                  :tipo "Artefato"
                  :preco 500
                  :forca-magica 200)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun processa-venda (catalogo)
  (let* (
       
         (armas (remove-if-not
                 (lambda (i)
                   (string= (item-tipo i) "Arma"))
                 catalogo))

         (armas-com-imposto
          (mapcar
           (lambda (i)
             (make-item
              :nome (item-nome i)
              :tipo (item-tipo i)
              :preco (adiciona-imposto (item-preco i))
              :forca-magica (item-forca-magica i)))
           armas))

    
         (resultado
          (mapcar
           (lambda (i)
             (format nil "~a -> Preco: ~a | Forca Magica: ~a"
                     (item-nome i)
                     (item-preco i)
                     (bonus-maldicao (item-forca-magica i))))
           armas-com-imposto)))

    resultado))

(format t "~%Resultado da venda: ~a"
        (processa-venda catalogo))
