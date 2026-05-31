data Bebida = Bebida {
  nome :: String,
  tipo :: String,
  preco :: Double
}

data StatusPedido = Aberto | Entregue | Cancelado
data Pedido = Pedido [Bebida] StatusPedido

pedidoCancelado :: StatusPedido -> Bool
pedidoCancelado Cancelado = True
pedidoCancelado _ = False

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bebidas status)
  | pedidoCancelado status = 0.0
  | otherwise = sum (map preco bebidas)

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido"
primeiraBebida (Pedido (bebida:_) _) = nome bebida

main :: IO ()
main = do
  let pedido1 = Pedido [Bebida "Corote" "Alcoólico" 12.0, Bebida "Pingado" "Cafeina" 10.0] Entregue
  let pedido2 = Pedido [Bebida "Cachaça de banana" "Alcoólico" 15.0, Bebida "Monster" "Energy" 8.0] Cancelado

  putStrLn "Valor total do pedido entregue:"
  print (valorTotalPedido pedido1)

  putStrLn "Valor total do pedido cancelado:"
  print (valorTotalPedido pedido2)