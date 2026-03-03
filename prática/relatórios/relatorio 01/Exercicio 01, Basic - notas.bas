DIM n1 AS INTEGER
DIM n2 AS INTEGER
DIM n3 AS INTEGER
DIM media AS DOUBLE

INPUT "Digite a primeira nota: ", n1
INPUT "Digite a segunda nota: ", n2
INPUT "Digite a terceira nota: ", n3

media = (n1 + n2 + n3) / 3

IF media >= 70 THEN
    PRINT "Aprovado direto"
ELSE
    PRINT "Reprovado direto"
END IF

END