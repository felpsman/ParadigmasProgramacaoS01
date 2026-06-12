(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defun filtra-por-perigo (criaturas)
  (remove-if-not
   (lambda (criatura)
     (not (eq (criatura-periculosidade criatura) 'baixa)))
   criaturas))

(defun relatorio-profundidade (criaturas)
  (mapcar
   (lambda (criatura)
     (format nil "~A: Vive em ~A"
             (criatura-nome criatura)
             (criatura-ambiente criatura)))
   (remove-if-not
    (lambda (criatura)
      (string= (criatura-ambiente criatura) "Deep"))
    criaturas)))

(defun descricao-criatura (criatura)
  (format nil "Nome: ~A | Ambiente: ~A | Periculosidade: ~A"
          (criatura-nome criatura)
          (criatura-ambiente criatura)
          (criatura-periculosidade criatura)))

(defun main ()
  (let ((catalogo
         (list
          (make-criatura :nome "Peeper"
                         :ambiente "Safe Shallows"
                         :periculosidade 'baixa
                         :vida-media 5.0)

          (make-criatura :nome "Reaper Leviathan"
                         :ambiente "Dunes"
                         :periculosidade 'alta
                         :vida-media 100.0)

          (make-criatura :nome "Ghost Leviathan"
                         :ambiente "Deep"
                         :periculosidade 'alta
                         :vida-media 200.0)

          (make-criatura :nome "CrabSquid"
                         :ambiente "Deep"
                         :periculosidade 'media
                         :vida-media 80.0))))

    (format t "Catalogo completo:~%")
    (mapcar
     (lambda (criatura)
       (format t "~A~%" (descricao-criatura criatura)))
     catalogo)

    (format t "~%Criaturas perigosas:~%")
    (mapcar
     (lambda (criatura)
       (format t "~A~%" (descricao-criatura criatura)))
     (filtra-por-perigo catalogo))

    (format t "~%Relatorio de profundidade:~%")
    (mapcar
     (lambda (linha)
       (format t "~A~%" linha))
     (relatorio-profundidade catalogo))))

(main)