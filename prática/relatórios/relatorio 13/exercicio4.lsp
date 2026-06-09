(deftype Elemento ()
  '(member Pyro Hydro Cryo Electro Anemo))

(defstruct Local
  nome
  elemento
  dificuldade
  recompensa)

(defun bonusElemental (local)
  (cond
    ((or (eq (Local-elemento local) 'Pyro)
         (eq (Local-elemento local) 'Electro))
     (* (Local-recompensa local) 1.2))
    ((eq (Local-elemento local) 'Cryo)
     (* (Local-recompensa local) 1.1))
    (t
     (Local-recompensa local))))

(defun valeAPena (local)
  (and (> (bonusElemental local) 500)
       (<= (Local-dificuldade local) 3)))

(defun rotaDeFarm (catalogo)
  (mapcar
   (lambda (local)
     (format nil "~a - Recompensa: ~,2f"
             (Local-nome local)
             (bonusElemental local)))
   (remove-if-not #'valeAPena catalogo)))

(defun main ()
  (let ((catalogo
          (list
           (make-Local :nome "Residencial Alto do Inatel" :elemento 'Pyro :dificuldade 2 :recompensa 450.0)
           (make-Local :nome "Inatel" :elemento 'Hydro :dificuldade 4 :recompensa 700.0)
           (make-Local :nome "Residencial Marques" :elemento 'Cryo :dificuldade 3 :recompensa 480.0)
           (make-Local :nome "Dragons Gym" :elemento 'Electro :dificuldade 1 :recompensa 430.0)
           (make-Local :nome "Lanchonete da Neide" :elemento 'Anemo :dificuldade 2 :recompensa 400.0))))
    (format t "Lista completa:~%")
    (dolist (local catalogo)
      (format t "~a - Bonus elemental: ~,2f~%"
              (Local-nome local)
              (bonusElemental local)))

    (format t "~%Rota de farm recomendada:~%")
    (dolist (linha (rotaDeFarm catalogo))
      (format t "~a~%" linha))))

(main)