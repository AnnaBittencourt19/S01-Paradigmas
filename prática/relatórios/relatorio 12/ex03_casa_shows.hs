data Banda = Banda {
  nome :: String,
  genero :: String,
  cache :: Double
}

data StatusEvento = Ativo | Encerrado | Cancelado
data Evento = Evento [Banda] StatusEvento

eventoCancelado :: StatusEvento -> Bool
eventoCancelado Cancelado = True
eventoCancelado _ = False

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bandas status)
  | eventoCancelado status = 0.0
  | otherwise = total + total * 0.2
  where total = sum (map cache bandas)

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda cadastrada"
bandaAbertura (Evento (banda:_) _) = nome banda

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda cadastrada"
bandaEncerramento (Evento bandas _) = nome (last bandas)

main :: IO ()
main = do
  let evento1 = Evento [Banda "Marilyn Manson" "rock industrial" 1000.0, Banda "Him" "hard rock" 1500.0] Ativo
  let evento2 = Evento [Banda "Banda maldita" "rock industrial" 900.0, Banda "Anarexia" "punk" 1200.0] Encerrado
  let evento3 = Evento [] Cancelado

  putStrLn "Evento ativo:"
  print (custoTotalEvento evento1)
  putStrLn (bandaAbertura evento1)
  putStrLn (bandaEncerramento evento1)

  putStrLn "Evento encerrado:"
  print (custoTotalEvento evento2)
  putStrLn (bandaAbertura evento2)
  putStrLn (bandaEncerramento evento2)

  putStrLn "Evento cancelado:"
  print (custoTotalEvento evento3)
  putStrLn (bandaAbertura evento3)
  putStrLn (bandaEncerramento evento3)