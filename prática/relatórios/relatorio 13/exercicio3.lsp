(deftype TipoItem ()
  '(member Arma Pocao Artefato))

(defstruct Item
  nome
  tipo
  preco
  forcaMagica)

(defun adicionaImposto (preco)
  (* preco 1.15))

(defun bonusMaldicao (forcaMagica)
  (cond
    ((> forcaMagica 80) (* forcaMagica 1.5))
    (t forcaMagica)))

(defun descricaoVenda (item)
  (format nil "~a - Preco: ~,2f - Forca magica: ~,2f"
          (Item-nome item)
          (Item-preco item)
          (Item-forcaMagica item)))

(defun processaVenda (catalogo)
  (let* ((armas (remove-if-not
                 (lambda (item)
                   (eq (Item-tipo item) 'Arma))
                 catalogo))
         (comImposto
           (mapcar (lambda (item)
                     (make-Item :nome (Item-nome item)
                                :tipo (Item-tipo item)
                                :preco (adicionaImposto (Item-preco item))
                                :forcaMagica (Item-forcaMagica item)))
                   armas))
         (comBonus
           (mapcar (lambda (item)
                     (make-Item :nome (Item-nome item)
                                :tipo (Item-tipo item)
                                :preco (Item-preco item)
                                :forcaMagica (bonusMaldicao (Item-forcaMagica item))))
                   comImposto)))
    (mapcar #'descricaoVenda comBonus)))

(defun main ()
  (let ((catalogo
          (list
           (make-Item :nome "Bazuca" :tipo 'Arma :preco 100.0 :forcaMagica 90.0)
           (make-Item :nome "Monster Energy" :tipo 'Pocao :preco 50.0 :forcaMagica 40.0)
           (make-Item :nome "Isqueiro" :tipo 'Artefato :preco 300.0 :forcaMagica 100.0)
           (make-Item :nome "AK-47" :tipo 'Arma :preco 150.0 :forcaMagica 70.0)
           (make-Item :nome "Espada" :tipo 'Arma :preco 200.0 :forcaMagica 85.0))))
    (dolist (linha (processaVenda catalogo))
      (format t "~a~%" linha))))

(main)