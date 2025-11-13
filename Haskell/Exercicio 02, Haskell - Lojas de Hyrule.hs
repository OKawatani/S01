data Item = Item
  { nomeItem :: String
  , categoria :: String
  , precoItem :: Double
  }

data CompraZelda = CompraZelda
  { itens :: [Item]
  }

calculaDesconto :: [Item] -> Double
calculaDesconto xs =
  if sum (map precoItem xs) > 200
     then 0.10
     else 0.0

valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda xs)
  | total > 200 = total - total * desconto
  | otherwise = total + 15.0
  where total = sum (map precoItem xs)
        desconto = calculaDesconto xs

mostraItens :: [Item] -> String
mostraItens [] = ""
mostraItens (i:is) =
  nomeItem i ++ " (" ++ categoria i ++ ") - " ++ show (precoItem i) ++ "\n" ++ mostraItens is

main :: IO ()
main = do
  let i1 = Item "Espada de madeira" "Arma" 120.0
  let i2 = Item "Pocao vermelha" "Pocao" 50.0
  let i3 = Item "Escudo hyliano" "Equipamento" 180.0

  let compra1 = CompraZelda [i1, i2]
  let compra2 = CompraZelda [i1, i3]
  let compra3 = CompraZelda []

  putStrLn "Compra 1:"
  putStrLn (mostraItens (itens compra1))
  putStrLn ("Valor final: " ++ show (valorFinal compra1))
  putStrLn ""

  putStrLn "Compra 2:"
  putStrLn (mostraItens (itens compra2))
  putStrLn ("Valor final: " ++ show (valorFinal compra2))
  putStrLn ""

  putStrLn "Compra 3:"
  putStrLn (mostraItens (itens compra3))
  putStrLn ("Valor final: " ++ show (valorFinal compra3))
