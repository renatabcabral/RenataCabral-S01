(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defun soma-medo-recursiva (lista-oc)
  (if (null lista-oc)
      0
      (+ (ocorrencia-nivel-medo (car lista-oc))
         (soma-medo-recursiva (cdr lista-oc)))))

(defun analise-final (lista-oc)
  (let* ((total (soma-medo-recursiva lista-oc))
         (media (/ total (length lista-oc))))
    (mapcar
     (lambda (x) (ocorrencia-nome x))
     (remove-if-not
      (lambda (o)
        (and (> (ocorrencia-agentes-enviados o) 3)
             (> (ocorrencia-nivel-medo o) media)))
      lista-oc))))

(setq lista-teste
      (list
       (make-ocorrencia :nome "Ritual do Abismo" :ritual "Sangue" :nivel-medo 90 :agentes-enviados 5)
       (make-ocorrencia :nome "Ecos da Floresta" :ritual "Sombras" :nivel-medo 40 :agentes-enviados 2)
       (make-ocorrencia :nome "Chamado Antigo" :ritual "Runas" :nivel-medo 75 :agentes-enviados 4)
       (make-ocorrencia :nome "Porta do Vazio" :ritual "Energia" :nivel-medo 120 :agentes-enviados 6)
       (make-ocorrencia :nome "Vulto Errante" :ritual "Manifestacao" :nivel-medo 30 :agentes-enviados 1)))

(format t "~%Resultado: ~a" (analise-final lista-teste))
