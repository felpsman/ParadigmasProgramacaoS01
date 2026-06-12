(defstruct local
  nome
  elemento
  dificuldade
  recompensa)

(defun bonus-elemental (local)
  (cond
    ((or (eq (local-elemento local) 'pyro)
         (eq (local-elemento local) 'electro))
     (* (local-recompensa local) 1.2))

    ((eq (local-elemento local) 'cryo)
     (* (local-recompensa local) 1.1))

    (t
     (local-recompensa local))))

(defun vale-a-pena (local)
  (and (> (bonus-elemental local) 500)
       (<= (local-dificuldade local) 3)))

(defun rota-de-farm (locais)
  (mapcar
   (lambda (local)
     (format nil "~A - Recompensa: ~A"
             (local-nome local)
             (bonus-elemental local)))
   (remove-if-not #'vale-a-pena locais)))

(defun descricao-local (local)
  (format nil "Local: ~A | Elemento: ~A | Dificuldade: ~A | Recompensa com bonus: ~A"
          (local-nome local)
          (local-elemento local)
          (local-dificuldade local)
          (bonus-elemental local)))

(defun main ()
  (let ((catalogo
         (list
          (make-local :nome "Dominio das Chamas"
                      :elemento 'pyro
                      :dificuldade 2
                      :recompensa 450.0)

          (make-local :nome "Templo Congelado"
                      :elemento 'cryo
                      :dificuldade 3
                      :recompensa 480.0)

          (make-local :nome "Caverna Eletrica"
                      :elemento 'electro
                      :dificuldade 4
                      :recompensa 600.0)

          (make-local :nome "Lago Sagrado"
                      :elemento 'hydro
                      :dificuldade 2
                      :recompensa 400.0)

          (make-local :nome "Ruinas do Vento"
                      :elemento 'anemo
                      :dificuldade 1
                      :recompensa 700.0))))

    (format t "Lista completa:~%")
    (mapcar
     (lambda (local)
       (format t "~A~%" (descricao-local local)))
     catalogo)

    (format t "~%Rota de farm recomendada:~%")
    (mapcar
     (lambda (linha)
       (format t "~A~%" linha))
     (rota-de-farm catalogo))))

(main)