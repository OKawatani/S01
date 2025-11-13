data Banda = Banda
  { nomeBanda :: String
  , genero :: String
  , cache :: Double
  }

data StatusEvento = Ativo | Encerrado | Cancelado

data Evento = Evento
  { bandas :: [Banda]
  , statusEvento :: StatusEvento
  }

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento _ Cancelado) = 0.0
custoTotalEvento (Evento bs _) =
  let total = sum (map cache bs)
  in total + (total * 0.20)

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda cadastrada"
bandaAbertura (Evento (b:_) _) = nomeBanda b

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda cadastrada"
bandaEncerramento (Evento bs _) = nomeBanda (last bs)

mostraBandas :: [Banda] -> String
mostraBandas [] = ""
mostraBandas (b:bs) =
  nomeBanda b ++ " (" ++ genero b ++ ") - " ++ show (cache b) ++ "\n" ++ mostraBandas bs

main :: IO ()
main = do
  let b1 = Banda "Som da Noite" "Rock" 5000.0
  let b2 = Banda "Vibe Livre" "Pop" 3000.0
  let b3 = Banda "Jazz Trio" "Jazz" 4500.0

  let evento1 = Evento [b1, b2, b3] Ativo
  let evento2 = Evento [b2, b3] Encerrado
  let evento3 = Evento [b1] Cancelado

  putStrLn "Evento 1:"
  putStrLn (mostraBandas (bandas evento1))
  putStrLn ("Banda de abertura: " ++ bandaAbertura evento1)
  putStrLn ("Banda de encerramento: " ++ bandaEncerramento evento1)
  putStrLn ("Custo total: " ++ show (custoTotalEvento evento1))
  putStrLn ""

  putStrLn "Evento 2:"
  putStrLn (mostraBandas (bandas evento2))
  putStrLn ("Banda de abertura: " ++ bandaAbertura evento2)
  putStrLn ("Banda de encerramento: " ++ bandaEncerramento evento2)
  putStrLn ("Custo total: " ++ show (custoTotalEvento evento2))
  putStrLn ""

  putStrLn "Evento 3:"
  putStrLn (mostraBandas (bandas evento3))
  putStrLn ("Banda de abertura: " ++ bandaAbertura evento3)
  putStrLn ("Banda de encerramento: " ++ bandaEncerramento evento3)
  putStrLn ("Custo total: " ++ show (custoTotalEvento evento3))
