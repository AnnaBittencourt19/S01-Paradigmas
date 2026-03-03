DIM senha AS INTEGER
DIM senhausu AS INTEGER

senha = 1234

PRINT "Digite a senha:";
INPUT senhausu

IF senha = senhausu THEN
    PRINT "Acesso liberado!"
ELSE
    PRINT "Senha incorreta. Tente novamente"
END IF

END