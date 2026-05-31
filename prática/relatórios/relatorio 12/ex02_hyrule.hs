data Item = Item {
  nome :: String,
  categoria :: String,
  preco :: Double
}

data StatusCompra = Pendente | Concluida | Cancelada
data Compra = Compra [Item] StatusCompra

compraCancelada :: StatusCompra -> Bool
compraCancelada Cancelada = True
compraCancelada _ = False

totalItens :: [Item] -> Double
totalItens itens = sum (map preco itens)

valorFinal :: Compra -> Double
valorFinal (Compra itens status)
  | compraCancelada status = 0.0
  | total > 200 = total * 0.9
  | otherwise = total
  where total = totalItens itens

main :: IO ()
main = do
  let compra1 = Compra [Item "Espada" "Arma" 80.0, Item "Arroz" "Comida" 70.0, Item "Guarana" "Bebida" 90.0] Concluida
  putStrLn "Valor final da compra:"
  print (valorFinal compra1)