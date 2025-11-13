data Servico = Servico
  { nomeServico :: String
  , tipoServico :: String
  , precoBase :: Double
  }

data StatusAtendimento = EmAndamento | Finalizado | Cancelado

data Atendimento = Atendimento
  { servicos :: [Servico]
  , statusAtendimento :: StatusAtendimento
  }

bonusEspiritual :: [Servico] -> Double
bonusEspiritual ss = final
  where
    soma = sum (map precoBase ss)
    comBonus
      | length ss > 3 = soma * 1.25
      | otherwise = soma
    final
      | comBonus > 500 = comBonus * 0.90
      | otherwise = comBonus

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento _ Cancelado) = 0.0
valorFinalAtendimento (Atendimento ss _) 
  | null ss = 0.0
  | otherwise = bonusEspiritual ss

descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico (Atendimento [] _) = "Nenhum servico no atendimento"
descricaoPrimeiroServico (Atendimento (s:_) _) = nomeServico s ++ " - " ++ tipoServico s

mostraServicos :: [Servico] -> String
mostraServicos [] = ""
mostraServicos (s:ss) =
  nomeServico s ++ " (" ++ tipoServico s ++ ") - " ++ show (precoBase s) ++ "\n" ++ mostraServicos ss

main :: IO ()
main = do
  let s1 = Servico "Banho relaxante" "Banho" 120.0
  let s2 = Servico "Massagem profunda" "Massagem" 200.0
  let s3 = Servico "Banquete espiritual" "Banquete" 250.0
  let s4 = Servico "Esfoliacao" "Banho" 80.0
  let s5 = Servico "Tratamento facial" "Banho" 90.0

  let at1 = Atendimento [s1, s2] EmAndamento
  let at2 = Atendimento [s2, s3, s4, s5] Finalizado
  let at3 = Atendimento [s3, s2] Cancelado
  let at4 = Atendimento [] EmAndamento

  putStrLn "Atendimento 1:"
  putStrLn (mostraServicos (servicos at1))
  putStrLn ("Descricao primeiro servico: " ++ descricaoPrimeiroServico at1)
  putStrLn ("Valor final: " ++ show (valorFinalAtendimento at1))
  putStrLn ""

  putStrLn "Atendimento 2:"
  putStrLn (mostraServicos (servicos at2))
  putStrLn ("Descricao primeiro servico: " ++ descricaoPrimeiroServico at2)
  putStrLn ("Valor final: " ++ show (valorFinalAtendimento at2))
  putStrLn ""

  putStrLn "Atendimento 3:"
  putStrLn (mostraServicos (servicos at3))
  putStrLn ("Descricao primeiro servico: " ++ descricaoPrimeiroServico at3)
  putStrLn ("Valor final: " ++ show (valorFinalAtendimento at3))
  putStrLn ""

  putStrLn "Atendimento 4:"
  putStrLn (mostraServicos (servicos at4))
  putStrLn ("Descricao primeiro servico: " ++ descricaoPrimeiroServico at4)
  putStrLn ("Valor final: " ++ show (valorFinalAtendimento at4))
