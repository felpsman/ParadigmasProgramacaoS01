(defstruct erva
  nome
  preco-base)

(defun calcula-dosagem (peso idade)
  (cond
    ((or (<= idade 6) (< peso 20)) "10ml")
    ((or (<= idade 12) (< peso 50)) "25ml")
    (t "50ml")))

(defun ajusta-preco (erva)
  (cond
    ((string= (erva-nome erva) "Ginseng")
     (* (erva-preco-base erva) 3.0))
    ((string= (erva-nome erva) "Lotus")
     (* (erva-preco-base erva) 1.5))
    (t
     (erva-preco-base erva))))

(defun descricao-erva (erva peso idade)
  (format nil "Erva: ~A | Preco ajustado: ~A | Dosagem: ~A"
          (erva-nome erva)
          (ajusta-preco erva)
          (calcula-dosagem peso idade)))

(defun main ()
  (let ((ginseng (make-erva :nome "Ginseng" :preco-base 20.0))
        (lotus (make-erva :nome "Lotus" :preco-base 15.0))
        (camomila (make-erva :nome "Camomila" :preco-base 10.0)))
    
    (format t "~A~%" (descricao-erva ginseng 18.0 5))
    (format t "~A~%" (descricao-erva lotus 45.0 10))
    (format t "~A~%" (descricao-erva camomila 70.0 30))))

(main)