(deftype Periculosidade ()
  '(member Baixa Media Alta))

(defstruct Criatura
  nome
  ambiente
  periculosidade
  vidaMedia)

(defun filtraPorPerigo (catalogo)
  (remove-if-not
   (lambda (criatura)
     (not (eq (Criatura-periculosidade criatura) 'Baixa)))
   catalogo))

(defun relatorioProfundidade (catalogo)
  (mapcar
   (lambda (criatura)
     (format nil "~a: Vive em ~a"
             (Criatura-nome criatura)
             (Criatura-ambiente criatura)))
   (remove-if-not
    (lambda (criatura)
      (string= (Criatura-ambiente criatura) "Deep"))
    catalogo)))

(defun descricaoCriatura (criatura)
  (format nil "~a - Ambiente: ~a - Periculosidade: ~a"
          (Criatura-nome criatura)
          (Criatura-ambiente criatura)
          (Criatura-periculosidade criatura)))

(defun main ()
  (let ((catalogo
          (list
           (make-Criatura :nome "Peeper"
                          :ambiente "Safe Shallows"
                          :periculosidade 'Baixa
                          :vidaMedia 5)
           (make-Criatura :nome "Reaper Leviathan"
                          :ambiente "Dunes"
                          :periculosidade 'Alta
                          :vidaMedia 80)
           (make-Criatura :nome "Baal Peor"
                          :ambiente "Deep"
                          :periculosidade 'Media
                          :vidaMedia 30)
           (make-Criatura :nome "Tachash"
                          :ambiente "Deep"
                          :periculosidade 'Alta
                          :vidaMedia 50))))
    (format t "Catalogo completo:~%")
    (dolist (criatura catalogo)
      (format t "~a~%" (descricaoCriatura criatura)))

    (format t "~%Criaturas perigosas:~%")
    (dolist (criatura (filtraPorPerigo catalogo))
      (format t "~a~%" (descricaoCriatura criatura)))

    (format t "~%Relatorio de profundidade:~%")
    (dolist (linha (relatorioProfundidade catalogo))
      (format t "~a~%" linha))))

(main)