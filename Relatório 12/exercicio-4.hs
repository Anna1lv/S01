import Text.Printf (printf)

data Etapa = NaFila | NoBanho | Concluido
    deriving (Show, Eq)

data Atendimento = Atendimento
    { cliente :: String
    , servico :: String
    , valor   :: Double
    , etapa   :: Etapa
    }

descrever :: Atendimento -> String
descrever at = cliente at ++ " | Serviço: " ++ servico at ++ " | Etapa: " ++ show (etapa at)

concluir :: Atendimento -> Atendimento
concluir c = c { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos = sum (map valor (filter (\at -> etapa at == Concluido) atendimentos))

main :: IO ()
main = do
    let at1 = Atendimento "João" "Lavar o pé" 15.66 NaFila
    let at2 = Atendimento "José" "Lavar a mão" 14.75 NaFila
    let at3 = Atendimento "Júlia" "Spa Day" 80.99 NoBanho

    let atendimentos = [at1, at2, at3]

    let at2Concluido = concluir at2
    let at3Concluido = concluir at3
    let atendimentosAtualizados = [at1, at2Concluido, at3Concluido]

    putStrLn "--- Atendimentos Iniciais ---"
    mapM_ putStrLn (map descrever atendimentos)

    putStrLn "\n--- Atendimentos Atualizados ---"
    mapM_ putStrLn (map descrever atendimentosAtualizados)

    putStrLn "\n--- Valor Arrecadado (Inicial) ---"
    printf "Total: R$ %.2f\n" (arrecadado atendimentos)

    putStrLn "\n--- Valor Arrecadado (Atualizado) ---"
    printf "Total: R$ %.2f\n" (arrecadado atendimentosAtualizados)
