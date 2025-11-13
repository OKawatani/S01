data Bebida = Bebida
  { nome :: String
  , tipo :: String
  , preco :: Float
  }

data Status = Aberto | Entregue | Cancelado

data Pedido = Pedido
  { bebidas :: [Bebida]
  , status :: Status
  }

valorTotalPedido :: Pedido -> Float
valorTotalPedido (Pedido _ Cancelado) = 0
valorTotalPedido (Pedido bs _) = sum (map preco bs) + 5

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido"
primeiraBebida (Pedido (b:_) _) = nome b

main :: IO ()
main = do
  let b1 = Bebida "Cafe preto" "Cafe" 8.0
  let b2 = Bebida "Cha verde" "Cha" 6.0
  let b3 = Bebida "Suco de laranja" "Suco" 10.0

  let pedido1 = Pedido [b1, b2, b3] Aberto
  let pedido2 = Pedido [] Aberto
  let pedido3 = Pedido [b1] Cancelado

  putStrLn ("Primeira bebida do pedido 1: " ++ primeiraBebida pedido1)
  putStrLn ("Primeira bebida do pedido 2: " ++ primeiraBebida pedido2)
  putStrLn ("Primeira bebida do pedido 3: " ++ primeiraBebida pedido3)

  putStrLn ("Valor total do pedido 1: " ++ show (valorTotalPedido pedido1))
  putStrLn ("Valor total do pedido 2: " ++ show (valorTotalPedido pedido2))
  putStrLn ("Valor total do pedido 3: " ++ show (valorTotalPedido pedido3))
