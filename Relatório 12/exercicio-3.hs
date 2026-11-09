data Esboco = Esboco
    { titulo  :: String
    , tecnica :: String
    , horas   :: Int
    }

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "Nenhum esboço no caderno."
esbocoMaisRecente (e:_) = "Mais recente: " ++ titulo e ++ " (" ++ tecnica e ++ ")"

contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
    let esboco1 = Esboco "A Criatura" "Nanquim" 7
    let esboco2 = Esboco "Ruína" "Grafite" 11
    let esboco3 = Esboco "A Sombra" "Carvão" 10

    let esbocos = [esboco1, esboco2, esboco3]
    let cadernoVazio = []

    putStrLn "--- Esboço mais recente ---"
    putStrLn (esbocoMaisRecente esbocos)

    putStrLn "\n--- Número de Esboços ---"
    print (contarEsbocos esbocos)

    putStrLn "\n--- Total de Horas Desenhando ---"
    print (horasDesenhando esbocos)

    putStrLn "\n--- Esboço mais recente (Caderno Vazio) ---"
    putStrLn (esbocoMaisRecente cadernoVazio)

    let esbocoNovo = Esboco { titulo = "Paisagem Sombria", tecnica = "Aquarela", horas = 5 }
    let cadernoNovo = esbocoNovo : esbocos

    putStrLn "\n--- Esboço mais recente (Caderno Novo) ---"
    putStrLn (esbocoMaisRecente cadernoNovo)

    putStrLn "\n--- Comparação de Contagem ---"
    putStrLn ("Caderno anterior: " ++ show (contarEsbocos esbocos))
    putStrLn ("Caderno novo: " ++ show (contarEsbocos cadernoNovo))

    -- putStrLn (titulo (head cadernoVazio))
    -- erro pois não tem primeiro elemento em uma lista vazia
