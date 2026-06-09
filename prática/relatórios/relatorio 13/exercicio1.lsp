(defstruct Erva
  nome
  precoBase)
  
(defun calculaDosagem (peso idade)
  (cond
    ((or (< idade 6) (< peso 30)) "10ml")
    ((or (< idade 18) (< peso 60)) "25ml")
    (t "50ml")))

(defun ajustaPreco (erva)
  (cond
    ((string= (Erva-nome erva) "Ginseng")
     (* (Erva-precoBase erva) 3.0))
    ((string= (Erva-nome erva) "Lotus")
     (* (Erva-precoBase erva) 1.5))
    (t
     (Erva-precoBase erva))))

(defun descricaoErva (erva peso idade)
  (format nil "~a - Preco ajustado: ~,2f - Dosagem: ~a"
          (Erva-nome erva)
          (ajustaPreco erva)
          (calculaDosagem peso idade)))

(defun main ()
  (let ((ginseng (make-Erva :nome "Ginseng" :precoBase 20.0))
        (lotus (make-Erva :nome "Lotus" :precoBase 15.0))
        (camomila (make-Erva :nome "Camomila" :precoBase 10.0)))
    (format t "~a~%" (descricaoErva ginseng 25.0 4))
    (format t "~a~%" (descricaoErva lotus 50.0 12))
    (format t "~a~%" (descricaoErva camomila 75.0 30))))

(main)