data Servico = Servico {
  nome :: String,
  tipo :: String,
  preco :: Double
}

data StatusAtendimento = EmAndamento | Finalizado | Cancelado
data Atendimento = Atendimento [Servico] StatusAtendimento

atendimentoCancelado :: StatusAtendimento -> Bool
atendimentoCancelado Cancelado = True
atendimentoCancelado _ = False

totalServicos :: [Servico] -> Double
totalServicos servicos = sum (map preco servicos)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servicos status)
  | atendimentoCancelado status = 0.0
  | length servicos > 3 = total * 1.25
  | otherwise = total
  where total = totalServicos servicos

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum servico cadastrado"
primeiroServico (Atendimento (servico:_) _) = nome servico

main :: IO ()
main = do
  let atendimento1 = Atendimento [Servico "Banho" "limpeza básica" 40.0, Servico "Arrancar inhaca" "limpeza mediana" 50.0, Servico "massagem yubaba" "massagem básica" 30.0, Servico "transformar em porco" "feitiço" 20.0] Finalizado
  let atendimento2 = Atendimento [Servico "Banho de sal grosso" "limpeza espiritual" 60.0, Servico "lixar o pé" "pedicure" 35.0] Cancelado

  putStrLn "Valor final do primeiro atendimento:"
  print (valorFinalAtendimento atendimento1)
  putStrLn (primeiroServico atendimento1)

  putStrLn "Valor final do segundo atendimento:"
  print (valorFinalAtendimento atendimento2)
  putStrLn (primeiroServico atendimento2)