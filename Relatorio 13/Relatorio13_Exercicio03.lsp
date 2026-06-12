(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca-magica)
  (cond
    ((> forca-magica 80)
     (* forca-magica 1.5))
    (t
     forca-magica)))

(defun descricao-venda (item)
  (format nil "Item: ~A | Preco com imposto: ~A | Forca magica com bonus: ~A"
          (item-nome item)
          (item-preco item)
          (item-forca-magica item)))

(defun processa-venda (itens)
  (mapcar
   #'descricao-venda
   (mapcar
    (lambda (item)
      (make-item :nome (item-nome item)
                 :tipo (item-tipo item)
                 :preco (item-preco item)
                 :forca-magica (bonus-maldicao (item-forca-magica item))))
    (mapcar
     (lambda (item)
       (make-item :nome (item-nome item)
                  :tipo (item-tipo item)
                  :preco (adiciona-imposto (item-preco item))
                  :forca-magica (item-forca-magica item)))
     (remove-if-not
      (lambda (item)
        (eq (item-tipo item) 'arma))
      itens)))))

(defun main ()
  (let ((catalogo
         (list
          (make-item :nome "Katana Amaldicoada"
                     :tipo 'arma
                     :preco 500.0
                     :forca-magica 90.0)

          (make-item :nome "Pocao de Cura"
                     :tipo 'pocao
                     :preco 80.0
                     :forca-magica 20.0)

          (make-item :nome "Espada Sombria"
                     :tipo 'arma
                     :preco 300.0
                     :forca-magica 70.0)

          (make-item :nome "Anel Magico"
                     :tipo 'artefato
                     :preco 1000.0
                     :forca-magica 95.0)

          (make-item :nome "Machado Infernal"
                     :tipo 'arma
                     :preco 700.0
                     :forca-magica 100.0))))

    (format t "Vendas processadas:~%")
    (mapcar
     (lambda (linha)
       (format t "~A~%" linha))
     (processa-venda catalogo))))

(main)